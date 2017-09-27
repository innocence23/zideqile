@extends('adminlte::page')

@section('title', '帮助手册')

@section('content_header')
    <h1>帮助手册</h1>
    <ol class="breadcrumb">
        <li class="active">帮助手册</li>
    </ol>
@stop

@section('content')
<div class="container-fluid spark-screen" >
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    帮助手册
                </div>
                <div class="panel-body">
                    <div class="container-fluid">

                        <h5>图片添加样式 ： <code>class="img-rounded img-responsive img-raised"</code></h5>
                        <p></p>
                        <hr>

                        <h4>1、google 字体图标用法地址和文档</h4>
                        <div>
                            <blockquote>
                                face <code>&lt;i class="material-icons"&gt;face&lt;/i&gt;</code>
                            </blockquote>
                            <a href="http://google.github.io/material-design-icons/#icon-font-for-the-web" target="_blank">字体文档</a>
                        </div>
                        <hr>

                        <h4>2、一些简单的扩展包</h4>
                        <div>
                            <ol>
                                <li><a href="https://github.com/caouecs/Laravel-lang" target="_blank">语言包</a></li>
                                <li><a href="https://laravel.com/docs/5.4/redis" target="_blank">predis/predis</a></li>
                                <li><a href="http://image.intervention.io/" target="_blank">intervention/image</a></li>
                                <li><a href="#entrust" target="_blank">zizaco/entrust</a></li>
                                <li><a href="#adminlte" target="_blank">jeroennoten/laravel-adminlte</a></li>
                                <li><a href="https://github.com/barryvdh/laravel-cors" target="_blank">Cors跨域访问</a></li>
                            </ol>
                        </div>
                        <hr>

                        <h4>3、前端js插件</h4>
                        <div>
                            <ol>
                                <li>adminlte bootstrap angular</li>
                                <li><a href="http://bootstrap-table.wenzhixin.net.cn/" target="_blank">bootstrap-table</a></li>
                                <li><a href="http://thienhung1989.github.io/angular-tree-dnd/demo/#/list" target="_blank">angular拖拽树</a></li>
                                <li><a href="http://git.razko.nl/InlineAttachment/" target="_blank">InlineAttachment插件 评论拖拽图片</a></li>
                                <li><a href="http://plugins.krajee.com/file-input" target="_blank">bootstrap-fileinput 是否有用的必要</a></li>
                                <li><a href="http://lokeshdhakar.com/projects/lightbox2/" target="_blank">图片点击放大 lightbox</a></li>
                                <li><h4><a href="http://demos.creative-tim.com/material-kit/index.html" target="_blank">前端页面模板</a></h4></li>
                                <li><h4><a href="https://bootstrap-wysiwyg.github.io/bootstrap3-wysiwyg/" target="_blank">富文本编辑器</a></h4></li>
                            </ol>
                        </div>
                        <hr>

                        <h4 name="entrust">4、REAC模块entrust</h4>
                        <div>
                            <ol>
                                <li><a href="https://github.com/Zizaco/entrust" target="_blank">Zizaco/entrust</a></li>
                                <li><strong>安装后具体看文档，注意命名空间</strong></li>
                                <li>
                                    <blockquote>
                                        <code style="display: block; font-size: 13px;">//新加了一条 entrust 权限里面一直报错</code>
                                        <code style="display: block; font-size: 13px;">'model' => App\User::class,</code>
                                        <code style="display: block; font-size: 13px;">//users() -> return $this->belongsToMany(
                                            Config::get('auth.model'),
                                            Config::get('entrust.role_user_table'),
                                            Config::get('entrust.role_foreign_key'),
                                            Config::get('entrust.user_foreign_key')
                                            );</code>
                                    </blockquote>
                                </li>
                            </ol>
                        </div>
                        <hr>

                        <h4 name="adminlte">5、后台模adminlte </h4>
                        <div>
                            <ol>
                                <li><a href="https://github.com/jeroennoten/Laravel-AdminLTE" target="_blank">jeroennoten/laravel-adminlte</a></li>
                                <li>
                                    <ul>
                                        <li>这个还可以自己在配置文件配置菜单</li>
                                        <li>继承重写文件修改对应的页面</li>
                                        <li>配置菜单继承后还可以添加对应的显示权限</li>
                                        <li>具体仔细看看github上面文档</li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                        <hr>

                        <h4 name="adminlte">6、laravel相关</h4>
                        <div>
                            <ol>
                                <li><a href="http://blog.csdn.net/realghost/article/details/52512268" target="_blank">
                                        laravel实现区分前后台用户登录 (退出有问题)</a></li>
                                <li><a href="http://blog.csdn.net/sinat_21125451/article/details/54316112" target="_blank">
                                        laravel实现区分前后台用户登录 (修复退出)</a></li>
                                <li><a href="https://stackoverflow.com/questions/34490600/how-to-use-multi-auth-in-laravel-5-2" target="_blank">
                                        laravel实现区分前后台用户登录 (国外人写的)</a></li>
                            </ol>
                        </div>

                        <h4 name="adminlte">7、其他</h4>
                        <div>
                            <ol>
                                <li>根目录下添加了 helpers.php 文件</li>
                                <li>更改了ckfinder的源码 支持文件名自定义 E:\myProject\blog\public\ckfinder\core\connector\php\vendor\cksource\ckfinder\src\CKSource\CKFinder\Filesystem\File\UploadedFile.php 67行</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<h4 name="adminlte">项目初始化</h4>
<pre>
    https://github.com/barryvdh/laravel-ide-helper
    https://gist.githubusercontent.com/barryvdh/5227822/raw/2c73039cd2b11c2f90f22e829de0231dd3733d62/_ide_helper.php

    https://github.com/jeroennoten/Laravel-AdminLTE

    https://github.com/barryvdh/laravel-cors

    https://github.com/caouecs/Laravel-lang

    https://github.com/Zizaco/entrust

    https://packagist.org/packages/predis/predis

    https://github.com/Intervention/image
    http://image.intervention.io/getting_started/installation#laravel

    https://github.com/laravel/socialite


    Barryvdh\Cors\ServiceProvider::class,
    Laravel\Socialite\SocialiteServiceProvider::class,
    Intervention\Image\ImageServiceProvider::class
    Zizaco\Entrust\EntrustServiceProvider::class,
    JeroenNoten\LaravelAdminLte\ServiceProvider::class,

    'Socialite' => Laravel\Socialite\Facades\Socialite::class,
    'Image' => Intervention\Image\Facades\Image::class
    'Entrust'   => Zizaco\Entrust\EntrustFacade::class,

    php artisan vendor:publish --provider="Intervention\Image\ImageServiceProviderLaravel5"
    php artisan vendor:publish
    php artisan vendor:publish --provider="JeroenNoten\LaravelAdminLte\ServiceProvider" --tag=assets

    protected $middlewareGroups = [
    'web' => [
    // ...
    ],

    'api' => [
    // ...
    \Barryvdh\Cors\HandleCors::class,
    ],
    ];

    "barryvdh/laravel-cors": "^0.9.3",
    "caouecs/laravel-lang": "~3.0",
    "intervention/image": "^2.3",
    "jeroennoten/laravel-adminlte": "^1.21",
    "laravel/socialite": "^3.0",
    "predis/predis": "^1.1",
    "zizaco/entrust": "5.2.x-dev"

    php artisan make:auth

    php artisan entrust:migration

    php artisan make:model Permission
    php artisan make:model Role

    php artisan make:model Admin -m
    php artisan make:model Category -m
    php artisan make:model Tag -m
    php artisan make:model Post -m
    php artisan make:model Dict -m
    php artisan make:model Comment -m
    php artisan make:model Bushou -m
    php artisan make:model Carousel -m
    php artisan make:model Menu  -m
    php artisan make:model Setting  -m
    php artisan make:model FriendLink  -m
    php artisan make:model SinglePage  -m

    php artisan migrate
</pre>
@stop

@section('css')
@stop

@section('js')
@stop