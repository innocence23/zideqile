<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use Illuminate\Support\Facades\Redis;
use Auth;

class CategoryController extends Controller
{
    /**
     * @param Request $request
     * @return string
     */
    public function getLists(Request $request)
    {
        $res = Category::orderby('weight', 'desc')->get();
        return json_encode($res);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.categories.index');
    }

    /**
     * Display the specified resource.
     * @param Category $category
     * @return mixed
     */
    public function show(Category $category)
    {
        return $category;
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
            'name' => 'required|max:8|unique:categories,name',
        ]);
        $data = $request->all();
        $id = auth('admin')->user()->id;
        $data['created_by'] = $id;
        $data['updated_by'] = $id;
        $model = Category::create($data);
        //更新缓存
        Redis::DEL('category_info');
        return response($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Category $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $this->validate($request, [
            'name' => 'required|max:8|unique:categories,name,'.$category->id,
        ]);
        $model = $category;
        $data = $request->all();
        $data['updated_by'] = auth('admin')->user()->id;
        $model->update($data);
        //更新缓存
        Redis::DEL('category_info');
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
        $model = Category::find($id);
        $model->pid = $target_pid ;
        $model->save();
        //修改拖拽节点后节点的排序权重处理
        $ids = trim($ids, ',');
        $ids = explode(',', $ids);
        $weight = count($ids);
        foreach ($ids as $k=>$v) {
            $model = Category::find($v);
            $model->weight = $weight-- ;
            $res = $model->save();
        }
        //更新缓存
        Redis::DEL('category_info');
        return response($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Category $category
     * @return \Illuminate\Http\Response
     */
    public function disable(Request $request, Category $category)
    {
        $model = $category;
        $status = $request->input('status', 0) ;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
        //更新缓存
        Redis::DEL('category_info');
    }
}
