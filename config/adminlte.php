<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Title
    |--------------------------------------------------------------------------
    |
    | The default title of your admin panel, this goes into the title tag
    | of your page. You can override it per page with the title section.
    | You can optionally also specify a title prefix and/or postfix.
    |
    */

    'title' => '自得其乐',

    'title_prefix' => '',

    'title_postfix' => '',

    /*
    |--------------------------------------------------------------------------
    | Logo
    |--------------------------------------------------------------------------
    |
    | This logo is displayed at the upper left corner of your admin panel.
    | You can use basic HTML here if you want. The logo has also a mini
    | variant, used for the mini side bar. Make it 3 letters or so
    |
    */

    'logo' => '<b>自得</b>其乐',

    'logo_mini' => '<b>自</b>乐',

    /*
    |--------------------------------------------------------------------------
    | Skin Color
    |--------------------------------------------------------------------------
    |
    | Choose a skin color for your admin panel. The available skin colors:
    | blue, black, purple, yellow, red, and green. Each skin also has a
    | ligth variant: blue-light, purple-light, purple-light, etc.
    |
    */

    'skin' => 'blue',

    /*
    |--------------------------------------------------------------------------
    | Layout
    |--------------------------------------------------------------------------
    |
    | Choose a layout for your admin panel. The available layout options:
    | null, 'boxed', 'fixed', 'top-nav'. null is the default, top-nav
    | removes the sidebar and places your menu in the top navbar
    |
    */

    'layout' => null,

    /*
    |--------------------------------------------------------------------------
    | Collapse Sidebar
    |--------------------------------------------------------------------------
    |
    | Here we choose and option to be able to start with a collapsed side
    | bar. To adjust your sidebar layout simply set this  either true
    | this is compatible with layouts except top-nav layout option
    |
    */

    'collapse_sidebar' => true,

    /*
    |--------------------------------------------------------------------------
    | URLs
    |--------------------------------------------------------------------------
    |
    | Register here your dashboard, logout, login and register URLs. The
    | logout URL automatically sends a POST request in Laravel 5.3 or higher.
    | You can set the request to a GET or POST with logout_method.
    | Set register_url to null if you don't want a register link.
    |
    */

    'dashboard_url' => 'home',

    'logout_url' => 'admin/logout',

    'logout_method' => null,

    'login_url' => 'admin/login',

    'register_url' => 'register',

    /*
    |--------------------------------------------------------------------------
    | Menu Items
    |--------------------------------------------------------------------------
    |
    | Specify your menu items to display in the left sidebar. Each menu item
    | should have a text and and a URL. You can also specify an icon from
    | Font Awesome. A string instead of an array represents a header in sidebar
    | layout. The 'can' is a filter on Laravel's built in Gate functionality.
    |
    */

    'menu' => [
        [
            'text'        => 'Dashboard',
            'url'         => '/admin/index',
            'icon'        => 'dashboard',
            //'label'       => 4,
            //'label_color' => 'success',
        ],
        '内容管理',
        [
            'text' => 'TAG管理',
            'url'  => '/admin/tag/',
            'icon' => 'tags',
        ],
        [
            'text' => '分类管理',
            'url'  => '/admin/category/',
            'icon' => 'navicon',
        ],
        [
            'text' => '文章管理',
            'url'  => '/admin/post/',
            'icon' => 'folder',
        ],
        '字典管理',
        [
            'text' => '拼音管理',
            'url'  => '/admin/pinyin/',
            'icon' => 'fa fa-quora',
        ],
        [
            'text' => '部首管理',
            'url'  => '/admin/bushou/',
            'icon' => 'star-half-o',
        ],
        [
            'text' => '字典管理',
            'url'  => '/admin/dict/',
            'icon' => 'book',
        ],
        '评论管理',
        [
            'text' => '评论管理',
            'url'  => '/admin/comment/',
            'icon' => 'comment-o',
        ],
        '账号管理',
        [
            'text'    => '账号管理',
            'icon'    => 'user',
            'submenu' => [
                [
                    'text' => '前台用户管理',
                    'url'  => '/admin/front-user/',
                    'icon' => 'user',
                ],
                [
                    'text' => '后台用户管理',
                    'url'  => '/admin/admin-user/',
                    'icon' => 'user-secret',
                ],
                [
                    'text' => '角色管理',
                    'url'  => '/admin/role/',
                    'icon' => 'user-plus',
                ],
                [
                    'text' => '权限管理',
                    'url'  => '/admin/permission/',
                    'icon' => 'lock',
                ],
            ],
        ],
        '配置管理',
        [
            'text' => '前台导航管理',
            'url'  => '/admin/menu/',
            'icon' => 'bars',
        ],
        [
            'text' => '网站基本设置',
            'url'  => '/admin/setting/',
            'icon' => 'cogs',
        ],
        [
            'text' => '友情链接管理',
            'url'  => '/admin/friend-link/',
            'icon' => 'link',
        ],
        [
            'text' => '单页管理',
            'url'  => '/admin/single-page/',
            'icon' => 'flag',
        ],
        [
            'text' => '首页轮播图管理',
            'url'  => '/admin/carousel/',
            'icon' => 'leaf',
        ],
        '帮助中心',
        [
            'text' => '帮助中心',
            'url'  => '/admin/manual/',
            'icon' => 'trophy',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Menu Filters
    |--------------------------------------------------------------------------
    |
    | Choose what filters you want to include for rendering the menu.
    | You can add your own filters to this array after you've created them.
    | You can comment out the GateFilter if you don't want to use Laravel's
    | built in Gate functionality
    |
    */

    'filters' => [
        JeroenNoten\LaravelAdminLte\Menu\Filters\HrefFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\ActiveFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\SubmenuFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\ClassesFilter::class,
        JeroenNoten\LaravelAdminLte\Menu\Filters\GateFilter::class,
    ],

    /*
    |--------------------------------------------------------------------------
    | Plugins Initialization
    |--------------------------------------------------------------------------
    |
    | Choose which JavaScript plugins should be included. At this moment,
    | only DataTables is supported as a plugin. Set the value to true
    | to include the JavaScript file from a CDN via a script tag.
    |
    */

    'plugins' => [
        'datatables' => false,
        'select2'    => false,
    ],
];
