<?php

namespace App\Http\Controllers\Admin;

use App\Admin;
use App\Dict;
use App\Bushou;
use App\Category;
use App\Tag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use Intervention\Image\Facades\Image;

class DictController extends Controller
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
        $cate_id = $request->input('cate_id', '');
        $bushou_id = $request->input('bushou_id', '');
	$tag_id = $request->input('tags', '');
        $where = [];
        if(!empty($name)) {
            $where[] = ['jianti', 'like', '%'.$name.'%'];
        }
        if(strlen($status) != 0) {
            $where[] = ['status', '=', $status];
        }
        if(!empty($cate_id)) {
            $cate_id = explode(':', $cate_id)[1];
            $where[] = ['cate_id', '=', $cate_id];
        }
        if(!empty($bushou_id)) {
            $bushou_id = explode(':', $bushou_id)[1];
            $where[] = ['bushou_id', '=', $bushou_id];
        }
        $curpage = ($offset / $limit) + 1;
        if(!empty($tag_id)) {
            $tags = explode(':', $tag_id)[1];
            $tag_taggable_id = \DB::table('taggables')
                ->where(['tag_id'=> $tags, 'taggable_type'=>'App\Dict'])->get(['taggable_id']);
            $taggable_id = [];
            foreach ($tag_taggable_id as $v) {
                $taggable_id[] = $v->taggable_id;
            }
            $res = Dict::with('tags')->where($where)->whereIn('id', $taggable_id)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
        } else {
            $res = Dict::with('tags')->where($where)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
        }
        $total = $res->total();
        $rows = $res->items();
        $categories = Category::pluck('name','id');
        $bushous = Bushou::pluck('name','id');
        $users = Admin::userList();
        foreach ($rows as $k=>$v) {
            $rows[$k]['cate_name'] = $categories[$v['cate_id']];
            foreach ($v->tags as $vv) {
                $rows[$k]['tag_name'] .= $vv->name . ',';
            }
            $rows[$k]['tag_name'] = trim($rows[$k]['tag_name'], ',');
	    $rows[$k]['bushou_name'] = $bushous[$v['bushou_id']];
            $rows[$k]['created_by_name'] = $users[$v['created_by']];
        }
        $response = [
            'total' => $total,
            'rows' => $rows
        ];
        return json_encode($response);
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function cateAndBushou()
    {
        $data['bushous'] = Bushou::all(['id','name']);
        $data['tags'] = Tag::all(['id','name']);
        $data['categories'] = [];
        $categories = Category::orderby('weight', 'desc')->get(['id','name', 'pid']);

        if($categories){
            foreach ($categories as $v) {
                if($v->pid == 0){
                    $pname[$v->id] = $v->name;
                }
            }
            foreach ($categories as $v) {
                if($v->pid != 0){
                    $data['categories'][] = [
                        'id' => $v->id,
                        'name' => $v->name,
                        'group' => $pname[$v->pid]
                    ];
                }
            }
        }
        return response()->json($data);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.dicts.index');
    }

    /**
     * Display the specified resource.
     * @param Dict $dict
     * @return mixed
     */
    public function show(Dict $dict)
    {
        $tags = [];
        foreach ($dict->tags as $v) {
            $tags[] = $v['id'];
        }
        unset($dict->tags);
        $dict->tags = $tags;
        return $dict;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.dicts.create');
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
            'jianti' => 'required|unique:dicts,jianti',
            'fanti' => 'required|unique:dicts,fanti',
            'slug' => 'required|unique:dicts,slug',
            'pinyin' => 'required',
            'bushou_id' => 'required',
            'cate_id' => 'required',
            'image' => 'required|image',
            'zitu' => 'image',
            'shuowen' => 'required',
            'jieshi' => 'required',
            'cizu' => 'required'
        ]);
        $model = new Dict();
        $data = $request->all();
        $file = $request->file('image');
        if($file->isValid()) {
            $res = $file->store(date('Y-m'), 'public');
            Image::make(public_path('uploads/' . $res))->resize(700, 80
            )->save();
            $data['image'] = $res;
        }
        $file = $request->file('zitu');
        if($file->isValid()) {
            $res = $file->store('zitu', 'public');
            Image::make(public_path('uploads/' . $res))->resize(500, 500
            )->save();
            $data['zitu'] = $res;
        }
        $data['bushou_id'] = explode(':', $request->input('bushou_id', 0))[1];
        $data['cate_id'] = explode(':', $request->input('cate_id', 0))[1];
        $id = auth('admin')->user()->id;
        $data['created_by'] = $id;
        $data['updated_by'] = $id;
        $model->fill($data);
        $model->save();

        $tags_temp = $request->input('tags', []);
        foreach ($tags_temp as $v) {
            $tags[] = explode(':', $v)[1];
        }
        $model->tags()->sync($tags);
        Session::flash('flash_message','字典添加成功');
        return redirect()->route('dict.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Dict $dict
     * @return \Illuminate\Http\Response
     */
    public function edit(Dict $dict)
    {
        return view('admin.dicts.edit', ['id'=>$dict->id]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Dict $dict
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Dict $dict)
    {
        $this->validate($request, [
            'jianti' => 'required|unique:dicts,jianti,'.$dict->id,
            'fanti' => 'required|unique:dicts,fanti,'.$dict->id,
            'slug' => 'required|unique:dicts,slug,'.$dict->id,
            'pinyin' => 'required',
            'bushou_id' => 'required',
            'cate_id' => 'required',
            'image' => 'image',
            'zitu' => 'image',
            'shuowen' => 'required',
            'jieshi' => 'required',
            'cizu' => 'required'
        ]);

        $model = $dict;
        $data = $request->all();
        if($request->hasFile('image')){
            $file = $request->file('image');
            if($file->isValid()) {
                //如果跟新了图片就删除就图片
                if ($request->input('image') != $model->image) {
                    if (file_exists(public_path(). '/uploads/' .$model->image)) {
                        unlink(public_path(). '/uploads/' .$model->image);
                    }
                }
                $res = $file->store(date('Y-m'), 'public');
                Image::make(public_path('uploads/' . $res))->resize(700, 80)->save();
                $data['image'] = $res;
            }
        }
        if($request->hasFile('zitu')){
            $file = $request->file('zitu');
            if($file->isValid()) {
                //如果跟新了图片就删除就图片
                if ($request->input('zitu') != $model->zitu) {
                    if (file_exists(public_path(). '/uploads/' .$model->zitu)) {
                        unlink(public_path(). '/uploads/' .$model->zitu);
                    }
                }
                $res = $file->store('zitu', 'public');
                Image::make(public_path('uploads/' . $res))->resize(500, 500)->save();
                $data['zitu'] = $res;
            }
        }
        $data['bushou_id'] = explode(':', $request->input('bushou_id', 0))[1];
        $data['cate_id'] = explode(':', $request->input('cate_id', 0))[1];
        $data['updated_by'] = auth('admin')->user()->id;
        $model->fill($data);
        $model->save();
        $tags_temp = $request->input('tags', []);
        foreach ($tags_temp as $v) {
            $tags[] = explode(':', $v)[1];
        }
        $model->tags()->sync($tags);
        Session::flash('flash_message','字典修改成功');
        return redirect()->route('dict.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Dict $dict
     * @return \Illuminate\Http\Response
     */
    public function disable(Request $request, Dict $dict)
    {
        $model = $dict;
        $status = $request->input('status', 0) ;
        $model->updated_by = auth('admin')->user()->id;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
    }
}
