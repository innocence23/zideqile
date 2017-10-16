<?php

namespace App\Http\Controllers\Admin;

use App\Pinyin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PinyinController extends Controller
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
        $first = $request->input('first', '');
        $status = $request->input('status', '');
        $where = [];
        if(!empty($name)) {
            $where[] = ['name', 'like', '%'.$name.'%'];
        }
        if(!empty($first)) {
            $where[] = ['first', '=', $first];
        }
        if(strlen($status) != 0) {
            $where[] = ['status', '=', $status];
        }
        $curpage = ($offset / $limit) + 1;
        $res = Pinyin::where($where)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
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
        return view('admin.pinyins.index');
    }

    /**
     * Display the specified resource.
     * @param Pinyin $pinyin
     * @return mixed
     */
    public function show(Pinyin $pinyin)
    {
        return $pinyin;
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
            'name' => 'required|max:10|unique:pinyins,name',
            'first' => 'required',
        ]);
        $data = $request->all();
        $id = auth('admin')->user()->id;
        $data['created_by'] = $id;
        $data['updated_by'] = $id;
        $model = Pinyin::create($data);
        return response($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Pinyin $pinyin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pinyin $pinyin)
    {
        $this->validate($request, [
            'name' => 'required|max:10|unique:pinyins,name,'.$pinyin->id,
            'first' => 'required',
        ]);
        $model = $pinyin;
        $data = $request->all();
        $data['updated_by'] = auth('admin')->user()->id;
        $model->update($data);
        return response($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param Pinyin $pinyin
     * @return \Illuminate\Http\JsonResponse
     */
    public function disable(Request $request, Pinyin $pinyin)
    {
        $model = $pinyin;
        $status = $request->input('status', 0) ;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
    }
}
