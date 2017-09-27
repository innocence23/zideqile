<?php

namespace App\Http\Controllers;

use App\Carousel;
use App\Category;
use App\Post;
use App\SinglePage;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redis;
use Intervention\Image\Facades\Image;

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
        $blogs = Post::Rightjoin('post_tag', 'post_tag.post_id', '=', 'posts.id')
            ->where('post_tag.tag_id', $tagId['id'])->select('posts.*')->paginate($this->pageSize);
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
//        $tag_ids = array_pluck($blog->tags->toArray(), 'pivot.tag_id');
//        $tag_post_ids = \DB::table('post_tag')->whereIn('tag_id', $tag_ids)->pluck('post_id')->toArray();
//        $tag_post_ids = array_unique($tag_post_ids);
        //相关类似文章推荐
        $similarPosts = [];
//        Post::select(['desc', 'title', 'slug', 'image'])->where([
//            ['cate_id',$blog->cate_id],
//            ['id', '!=', $blog->id],
//        ])->whereIn('id', $tag_post_ids)->orderBy(\DB::raw('RAND()'))->limit(3)->get();

        //存访问量
        Redis::pipeline(function ($pipe) use($blog) {
            Redis::incr('post_'.$blog->id.'_view');
            Redis::zincrby('post_view', 1, 'post_'.$blog->id);
        });
        $viewcount = Redis::get('post_'.$blog->id.'_view');

        return view('front.blog', ['blog'=>$blog, 'viewcount'=>$viewcount, 'similarPosts'=>$similarPosts]);
    }

    /**
     * 搜索页
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function search()
    {
        return view('front.search');
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
     * 个人主页
     *
     * @return \Illuminate\Http\Response
     */
    public function profile()
    {
        return view('front.profile');
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
    public function zhuantiInfo()
    {
        $zhuanti = SinglePage::where('type', 5)->value('content');
        return view('front.zhuanti-info', ['zhuanti'=>$zhuanti]);
    }

    /**
     * 测试页面
     */
    public function test()
    {
        // create new Intervention Image
        $img = Image::make('1.png');

        $img->colorize(30, 30, 30);
        // save file as png with medium quality
        $img->save('11.png', 60);
    }
}
