<?php

namespace App\Http\Controllers\Admin;

use App\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserAdminController extends Controller
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

        $res = Admin::where($where)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
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
        return view('admin.users-admin.index');
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
            'name' => 'required|max:10|unique:admins,name',
            'email' => 'required|email|max:30|unique:admins,email',
        ]);
        $model = new Admin();
        $model->name = $request->input('name', '');
        $model->email = $request->input('email', '');
        $model->password  = bcrypt($model->email . '@'); //默认密码邮箱加上一个@符
        $model->remember_token = str_random(10);
        $model->save();
        return response($model);
    }

    /**
     * @param Admin $admin
     * @return \Illuminate\Http\JsonResponse
     */
    public function reset(Admin $admin)
    {
        $model = $admin;
        $model->password = bcrypt($model->email .'@123');
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
    }

    /**
     * @param Request $request
     * @param Admin $admin
     * @return \Illuminate\Http\JsonResponse
     */
    public function disable(Request $request, Admin $admin)
    {
        $model = $admin;
        $status = $request->input('status', 0) ;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
    }
}
