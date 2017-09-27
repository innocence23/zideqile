<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\FriendLink;
use Illuminate\Support\Facades\Redis;

class FriendLinkController extends Controller
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
        $res = FriendLink::where($where)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
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
        return view('admin.friend-links.index');
    }

    /**
     * Display the specified resource.
     * @param FriendLink $friend_link
     * @return mixed
     */
    public function show(FriendLink $friend_link)
    {
        return $friend_link;
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
            'name' => 'required|max:15|unique:friend_links,name',
            'weight' => 'numeric',
            'image' => 'required',
            'desc' => 'required',
            'url' => 'required|url|unique:friend_links,url',
        ]);
        $model = new FriendLink();
        $model->fill($request->input());
        $model->save();

        //更新缓存
        Redis::DEL('friend_link');
        return response($model);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  FriendLink $friend_link
     * @return \Illuminate\Http\Response
     */
    public function edit(FriendLink $friend_link)
    {
        return view('admin.friend-links.edit', ['id'=>$friend_link->id]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  FriendLink $friend_link
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, FriendLink $friend_link)
    {
        $this->validate($request, [
            'name' => 'required|max:15|unique:friend_links,name,'.$friend_link->id,
            'weight' => 'numeric',
            'image' => 'required',
            'desc' => 'required',
            'url' => 'required|url|unique:friend_links,url,'.$friend_link->id,
        ]);
        $model = $friend_link;
        //如果跟新了图片就删除就图片
        if ($request->input('image') != $model->image) {
            if (file_exists(public_path(). '/uploads/' .$model->image)) {
                unlink(public_path(). '/uploads/' .$model->image);
            }
        }
        $model->fill($request->input());
        $model->save();

        //更新缓存
        Redis::DEL('friend_link');
        return response($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  FriendLink $friend_link
     * @return \Illuminate\Http\Response
     */
    public function disable(Request $request, FriendLink $friend_link)
    {
        $model = $friend_link;
        $status = $request->input('status', 0) ;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
    }
}
