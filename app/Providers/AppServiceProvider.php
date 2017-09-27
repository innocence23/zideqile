<?php

namespace App\Providers;

use App\FriendLink;
use App\Menu;
use App\Setting;
use Illuminate\Support\ServiceProvider;
use Redis;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //不能这样写  这样写  直接暴露出来表了  项目初始化 migrate时会报错
        //$setting = Setting::first()->toArray();
        //view()->share('bootstrapLine', $setting['bstable_line_count']);

        //Redis::flushAll();
        View::composer('*', function ($view) {
            //设置缓存数据
            if (!Redis::exists('setting')) {
                Redis::hmset('setting', Setting::firstOrFail()->toArray());
            }
            $setting = Redis::hgetall('setting');
            //导航链接
            if (!Redis::exists('menu_info')) { //模板只支持两级导航
                $menu = Menu::where('status', 1)->orderBy('pid')->orderBy('weight', 'desc')
                    ->get(["id", "pid", "url", "name", "icon"])->keyBy('id')->toArray();
                $menu = generateTree($menu);
                $menu = json_encode($menu);
                Redis::set('menu_info', $menu);
            } else{
                $menu = Redis::get('menu_info');
                $menu = json_decode($menu, true);
            }
            //友情链接
            //Redis::del('friend_link');
            if (!Redis::exists('friend_link')) {
                $linkdata = serialize(FriendLink::where('status', 1)
                    ->orderby('weight')->take(8)->get(['name', 'image', 'url'])->toArray());
                Redis::set('friend_link', $linkdata);
            }
            $friend_links = Redis::get('friend_link');
            $friend_links = unserialize($friend_links);
            //页面随机诗文
            $view->with('setting', $setting);
            $view->with('menu', $menu);
            $view->with('friend_links', $friend_links);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
