<?php

namespace App\Http\Controllers;

use App\Bushou;
use App\Carousel;
use App\Category;
use App\Dict;
use App\Pinyin;
use App\Post;
use App\SinglePage;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redis;

class IndexController extends Controller
{
    public $pageSize = 12; //由于前端页面的设计  最好为4的倍数

    /**
     * 网站首页
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $carousels = Carousel::where('status', 1)->get();
        return view('front.index', ['carousels'=>$carousels]);
    }

    /**
     * 字典检索搜索
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function dictType($type, $search)
    {
        $res = '';
        if($type == 'pinyin'){
            $res = Dict::where(['status'=>'1', 'pinyin'=>$search])->get(['jianti', 'fanti', 'pinyin', 'slug']);
        } elseif($type == 'bushou'){
            $res = Dict::where(['status'=>'1', 'bushou_id'=>$search])->get(['jianti', 'fanti', 'pinyin', 'slug']);
        } elseif($type == 'tag'){
            $res = Tag::find($search)->dicts()->get(['jianti', 'fanti', 'pinyin', 'slug']);
        }elseif($type == 'cate'){
            $res = Dict::where(['status'=>'1', 'cate_id'=>$search])->get(['jianti', 'fanti', 'pinyin', 'slug']);
        }
        return view('front.dict-type', ['data'=>$res]);
    }

    /**
     * 字典检索
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function dictIndex()
    {
        $pinyins = $bushous = [];
        $py = Pinyin::where('status',1)->pluck('first', 'name')->toArray();
        foreach ($py as $k=>$v) {
            $pinyins[$v][] = $k;
        }
        $bs = Bushou::where('status',1)->get(['id','bihua', 'name'])->toArray();
        foreach ($bs as $k=>$v) {
            $bushous[$v['bihua']][] = $v;
        }
        $tags = Tag::where('status',1)->pluck('name', 'id');
        return view('front.dict-index', ['pinyins'=>$pinyins, 'bushous'=>$bushous, 'tags'=>$tags]);
    }

    /**
     * 字典详情
     * @param $slug
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function dict($slug)
    {
        $dict = Dict::whereSlug($slug)->firstOrFail();
        //有用到tag 弥补缺陷
        $tag_ids = array_pluck($dict->tags->toArray(), 'pivot.tag_id');
        $tag_dict_ids = \DB::table('taggables')
            ->whereIn('tag_id', $tag_ids)
            ->where('taggable_type', 'App\Dict')->pluck('taggable_id')->toArray();
        $tag_dict_ids = array_unique($tag_dict_ids);
        //相关类似文章推荐
        $similarDicts = Dict::select(['fanti', 'slug', 'image'])->where([
            ['cate_id',$dict->cate_id],
            ['id', '!=', $dict->id],
        ])->whereIn('id', $tag_dict_ids)->orderBy(\DB::raw('RAND()'))->limit(3)->get();

        //存访问量
        Redis::pipeline(function ($pipe) use($dict) {
            Redis::incr('dict_'.$dict->id.'_view');
            Redis::zincrby('dict_view', 1, 'dict_'.$dict->id);
        });
        $viewcount = Redis::get('dict_'.$dict->id.'_view');

        return view('front.dict', ['dict'=>$dict, 'viewcount'=>$viewcount, 'similarDicts'=>$similarDicts]);
    }

    /**
     * 热点页面
     *
     * @return \Illuminate\Http\Response
     */
    public function tops()
    {
        $res1 = Redis::zrevrange('post_view', 0, -1);
        $res = array_map(function ($n){
           return str_replace('post_', '', $n);
        }, $res1);
        $referenceId = implode(',', $res);
        $blogs = Post::whereIn('id', $res)->orderByRaw(DB::raw("FIELD(id, $referenceId)"))->get();
        return view('front.top', ['blogs'=>$blogs]);
    }

    /**
     * 博客列表
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function blogs()
    {
        $blogs = Post::where('status', 1)->paginate($this->pageSize);
        $categories = $this->getCategories();
        return view('front.blogs', ['blogs'=>$blogs, 'categories'=>$categories]);
    }

    /**
     * 获取可用的栏目
     *
     * @return mixed
     */
    private function getCategories(){
        return Category::where('status', 1)->where('pid', '!=', 0)->pluck('name', 'id');
    }

    /**
     * 所属tag博客列表
     *
     * @param $tag
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function blogTag($tag)
    {
        $tagId = Tag::where('name', $tag)->firstOrFail();
        $blogs = Post::Rightjoin('taggables', 'taggables.taggable_id', '=', 'posts.id')
            ->where('taggables.taggable_type', 'App\Post')
            ->where('taggables.tag_id', $tagId['id'])->select('posts.*')->paginate($this->pageSize);
        return view('front.blogs', ['blogs'=>$blogs]);
    }

    /**
     * 所属栏目博客列表
     *
     * @param $category
     * @param $flag
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function blogCategory($category, $flag=null)
    {
        $cateId = Category::where('name', $category)->firstOrFail();
        $blogs = Post::where('cate_id', $cateId['id'])->paginate($this->pageSize);
        if ($flag) {
            $categories = $this->getCategories();
            return view('front.blogs', ['blogs'=>$blogs, 'categories'=>$categories]);
        } else {
            return view('front.blogs', ['blogs'=>$blogs]);
        }
    }

    /**
     * 博客详情
     * @param $slug
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function blog($slug)
    {
        $blog = Post::whereSlug($slug)->firstOrFail();
        //有用到tag 弥补缺陷
        $tag_ids = array_pluck($blog->tags->toArray(), 'pivot.tag_id');
        $tag_post_ids = \DB::table('taggables')
            ->whereIn('tag_id', $tag_ids)
            ->where('taggable_type', 'App\Post')->pluck('taggable_id')->toArray();
        $tag_post_ids = array_unique($tag_post_ids);
        //相关类似文章推荐
        $similarPosts = Post::select(['desc', 'name', 'slug', 'image'])->where([
            ['cate_id',$blog->cate_id],
            ['id', '!=', $blog->id],
        ])->whereIn('id', $tag_post_ids)->orderBy(\DB::raw('RAND()'))->limit(3)->get();

        //存访问量
        Redis::pipeline(function ($pipe) use($blog) {
            Redis::incr('post_'.$blog->id.'_view');
            Redis::zincrby('post_view', 1, 'post_'.$blog->id);
        });
        $viewcount = Redis::get('post_'.$blog->id.'_view');

        return view('front.blog', ['blog'=>$blog, 'viewcount'=>$viewcount, 'similarPosts'=>$similarPosts]);
    }

    /**
     * 搜索结果页
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function result()
    {
        $result = [];
        if(isset($_GET['search']) && !empty($_GET['search'])){
            $search = $_GET['search'];
            $res = DB::select("
                select id, t.name title, t.id slug, t.created_at created_at, 1 type
                from single_pages t
                where t.status =1 and t.type = 5 and t.name like '%{$search}%'
                union all
                select id, t.name title, t.slug slug, t.created_at created_at, 2 type
                from posts t
                where t.status =1 and t.name like '%{$search}%'
                union all
                select id, t.jianti title, t.slug slug, t.created_at created_at, 3 type
                from dicts t
                where (t.jianti = '{$search}' or t.fanti = '{$search}') and t.status =1 order by created_at desc;
                ");
            foreach ($res as $k=>$v) {
                $result[$k]['title'] = str_replace("{$search}",
                    "<strong style='color:red;'>{$search}</strong>", $v->title);
                $result[$k]['created_at'] = $v->created_at;
                if($v->type == 1){
                    $result[$k]['link'] = route('zhuanti-info', [$v->slug]);
                    $result[$k]['type'] = '专题';
                }elseif($v->type == 2){
                    $result[$k]['link'] = route('blog', [$v->slug]);
                    $result[$k]['type'] = '文章';
                }elseif($v->type == 3){
                    $result[$k]['link'] = route('dict', [$v->slug]);
                    $result[$k]['type'] = '字典';
                }
            }
        }
        return view('front.result', ['result'=>$result]);
    }

    /**
     * 前台注册页面
     *
     * @return \Illuminate\Http\Response
     */
    public function signup()
    {
        return view('front.signup');
    }

    /**
     * 前台登陆页面
     *
     * @return \Illuminate\Http\Response
     */
    public function login()
    {
        return view('front.login');
    }

    /**
     * 联系我们
     *
     * @return \Illuminate\Http\Response
     */
    public function contact()
    {
        //更新缓存
        $setting = Redis::HGETALL('setting');
        return view('front.contact', $setting);
    }

    /**
     * 宣传页
     *
     * @return \Illuminate\Http\Response
     */
    public function app()
    {
        return view('front.app');
    }

    /**
     * 关于我们
     *
     * @return \Illuminate\Http\Response
     */
    public function about()
    {
        $aboutus = SinglePage::where('type', 3)->value('content');
        return view('front.about', ['aboutus'=>$aboutus]);
    }

    /**
     * 条款说明页面
     *
     * @return \Illuminate\Http\Response
     */
    public function item()
    {
        $item = SinglePage::where('type', 1)->value('content');
        return view('front.item', ['item'=>$item]);
    }

    /**
     * 商务合作
     *
     * @return \Illuminate\Http\Response
     */
    public function cooperation()
    {
        $cooperation = SinglePage::where('type', 4)->value('content');
        $setting = Redis::HGETALL('setting');
        return view('front.cooperation', ['cooperation'=>$cooperation, 'setting'=>$setting]);
    }

    /**
     * 帮助中心
     *
     * @return \Illuminate\Http\Response
     */
    public function help()
    {
        $help = SinglePage::where('type', 2)->value('content');
        return view('front.help', ['help'=>$help]);
    }

    /**
     * 专题
     *
     * @return \Illuminate\Http\Response
     */
    public function zhuanti()
    {
        $zhuantis = SinglePage::where(['type'=>5, 'status'=>1])->paginate($this->pageSize);
        return view('front.zhuanti', ['zhuantis'=>$zhuantis]);
    }

    /**
     * 专题
     *
     * @return \Illuminate\Http\Response
     */
    public function zhuantiInfo($id)
    {
        $zhuanti = SinglePage::where(['type'=>5, 'status'=>1, 'id'=>$id])->value('content');
        return view('front.zhuanti-info', ['zhuanti'=>$zhuanti]);
    }

    /**
     * 个人主页
     *
     * @return \Illuminate\Http\Response
     */
    public function profile()
    {
        return view('front.profile');
    }

    /**
     * 产品页
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function productList()
    {
        return view('front.product');
    }

    /**
     * 产品详情
     *
     * @param Request $slug
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function productInfo(Request $slug)
    {
        return view('front.product-info');
    }

}
