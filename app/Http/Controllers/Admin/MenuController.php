<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Menu;
use Illuminate\Support\Facades\Redis;

class MenuController extends Controller
{
    /**
     * @param Request $request
     * @return string
     */
    public function getLists(Request $request)
    {
        $res = Menu::orderby('weight', 'desc')->get();
        return json_encode($res);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.menus.index');
    }

    /**
     * Display the specified resource.
     * @param Menu $menu
     * @return mixed
     */
    public function show(Menu $menu)
    {
        return $menu;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:8|unique:menus,name',
        ]);
        /*$model = new Menu();
        $model->fill($request->input());
        $model->save();*/
        $model = Menu::create($request->all());
        //更新缓存
        Redis::DEL('menu_info');
        return response($model);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Menu $menu
     * @return \Illuminate\Http\Response
     */
    public function edit(Menu $menu)
    {
        return view('admin.menus.edit', ['id'=>$menu->id]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Menu $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Menu $menu)
    {
        $this->validate($request, [
            'name' => 'required|max:8|unique:menus,name,'.$menu->id,
        ]);
        $model = $menu;
        /*$model->fill($request->input());
        $model->save();*/
        $model->update($request->all());
        //更新缓存
        Redis::DEL('menu_info');
        return response($model);
    }

    /**
     * order weight
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function order(Request $request)
    {
        $target_pid = $request->input('targetPid', 0);
        $id = $request->input('node_id', '');
        $ids = $request->input('ids', '');
        //修改拖拽节点的从属关系
        $model = Menu::find($id);
        $model->pid = $target_pid ;
        $model->save();
        //修改拖拽节点后节点的排序权重处理
        $ids = trim($ids, ',');
        $ids = explode(',', $ids);
        $weight = count($ids);
        foreach ($ids as $k=>$v) {
            $model = Menu::find($v);
            $model->weight = $weight-- ;
            $res = $model->save();
        }
        //更新缓存
        Redis::DEL('menu_info');
        return response($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Menu $menu
     * @return \Illuminate\Http\Response
     */
    public function disable(Request $request, Menu $menu)
    {
        $model = $menu;
        $status = $request->input('status', 0) ;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
        //更新缓存
        Redis::DEL('menu_info');
    }
}
