<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Setting;
use Illuminate\Support\Facades\Redis;

class SettingController extends Controller
{
    /**
     * @param Request $request
     * @return string
     */
    public function getLists(Request $request)
    {
        $limit = $request->input('limit', 10);
        $offset = $request->input('offset', 0);
        $sort = $request->input('sort', 'id');
        $order = $request->input('order', 'desc');
        $name = $request->input('name', '');
        $status = $request->input('status', '');
        $where = [];
        if(!empty($name)) {
            $where[] = ['name', 'like', '%'.$name.'%'];
        }
        if(strlen($status) != 0) {
            $where[] = ['status', '=', $status];
        }
        $curpage = ($offset / $limit) + 1;
        $res = Setting::where($where)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
        $total = $res->total();
        $rows = $res->items();
        $response = [
            'total' => $total,
            'rows' => $rows
        ];
        return json_encode($response);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.settings.index');
    }

    /**
     * Display the specified resource.
     * @param Setting $setting
     * @return mixed
     */
    public function show(Setting $setting)
    {
        return $setting;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (Setting::count()>0) {
            return response(['ERROR'=>'只能有一条配置数据'], 440)
                ->header('Content-Type', 'application/json');
        }
        $this->validate($request, [
            'name' => 'required',
            'logo' => 'required',
            'bgimage' => 'required',
            'qq' => 'required|numeric',
            'email' => 'required|email',
            'contact' => 'required',
            'position' => 'required',
            'position_x' => 'required',
            'position_y' => 'required',
            //'bstable_line_count' => 'required|min:1|max:200',
            'bstable_line_count' => 'required|numeric|between:1,200',
            'desc' => 'required',
            'copyright' => 'required'
        ]);

        $model = new Setting();
        $model->fill($request->input());
        $model->save();
        //更新缓存
        Redis::hmset('setting', $model->toArray());
        return response($model);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Setting $setting
     * @return \Illuminate\Http\Response
     */
    public function edit(Setting $setting)
    {
        return view('admin.settings.edit', ['id'=>$setting->id]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Setting $setting
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Setting $setting)
    {
        $this->validate($request, [
            'name' => 'required',
            'logo' => 'required',
            'bgimage' => 'required',
            'qq' => 'required|numeric',
            'email' => 'required',
            'contact' => 'required',
            'position' => 'required',
            'position_x' => 'required',
            'position_y' => 'required',
            'bstable_line_count' => 'required|numeric|between:1,100',
            'desc' => 'required',
            'copyright' => 'required'
        ]);
        $model = $setting;

        //如果跟新了图片就删除就图片
        if ($request->input('logo') != $model->logo) {
            unlink(public_path(). '/uploads/' . $model->logo);
        }
        if ($request->input('bgimage') != $model->bgimage) {
            unlink(public_path(). '/uploads/' . $model->bgimage);
        }
        //$model->fill($request->except('_method'));
        $model->fill($request->input());
        $model->save();

        //更新缓存
        Redis::hmset('setting', $model->toArray());
        return response($model);
    }
}
