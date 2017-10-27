<?php

namespace App\Http\Controllers\Api\v1;

use App\Carousel;
use App\Category;
use App\Post;
use App\SinglePage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Config;

class AppController extends Controller
{
    private $pageSize = 10;
    private $url = '';
    private $imgPrefix = '';

    public function __construct()
    {
        $this->url =  Config::get('app.url');
        $this->imgPrefix =  Config::get('app.url') . '/uploads/';
    }

    public function articles()
    {
        $blogs = Post::select('id', 'image', 'name', 'desc')->where('status', 1)->paginate($this->pageSize);
        foreach ($blogs as $k=>$v) {
            $blogs[$k]->image = $this->imgPrefix . $v->image;
        }
        return $blogs;
    }

    public function articleInfo($id)
    {
        $blog = Post::find($id);
        //转变头图
        $blog->image = $this->imgPrefix . $blog->image;
        //转变文章里面的图
        $blog->content = str_replace('src="/', "src=\"{$this->url}", $blog->content);
        return $blog;
    }

    public function carousels()
    {
        $carousels = Carousel::select('id', 'image', 'name', 'desc', 'url')->where('status', 1)->get();
        foreach ($carousels as $k=>$v) {
            $carousels[$k]->image = $this->imgPrefix . $v->image;
        }
        return $carousels;
    }

    public function about()
    {
        $aboutus = SinglePage::where('type', 3)->value('content');
        $aboutus = str_replace('src="/', "src=\"{$this->url}\\", $aboutus);
        return json_encode($aboutus);
    }

    public function categories()
    {
        $res = Category::select('name', 'id')->where('status', 1)->where('pid', '!=', 0)->get();
        foreach ($res as $k=>$v) {
            $res[$k]['color'] = randrgb();
        }
        return $res;
    }
}

//随机颜色生成
function randrgb()
{
    $str='0123456789ABCDEF';
    $estr='#';
    $len=strlen($str);
    for($i=1;$i<=6;$i++) {
        $num=rand(0,$len-1);
        $estr=$estr.$str[$num];
    }
    return $estr;
}