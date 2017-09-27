<?php

namespace App\Http\Controllers\Admin;

use App\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;

class CommentController extends Controller
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
        $commentable_id = $request->input('commentable_id', '');
        $uid = $request->input('uid', '');
        $status = $request->input('status', '');
        $where = [];
        if(!empty($commentable_id)) {
            $where[] = ['commentable_id', $commentable_id];
        }
        if(!empty($uid)) {
            $where[] = ['uid', $uid];
        }
        if(strlen($status) != 0) {
            $where[] = ['status', '=', $status];
        }

        $curpage = ($offset / $limit) + 1;

        $res = Comment::where($where)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
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
        return view('admin.comments.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Comment $comment
     * @return \Illuminate\Http\Response
     */
    public function disable(Request $request, Comment $comment)
    {
        $model = $comment;
        $status = $request->input('status', 0) ;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
    }
    
}
