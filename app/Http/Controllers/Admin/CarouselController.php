<?php

namespace App\Http\Controllers\Admin;

use App\Carousel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redis;

class CarouselController extends Controller
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
        $res = Carousel::where($where)->orderby($sort, $order)->paginate($limit, ['*'], 'page', $curpage);
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
        return view('admin.carousel.index');
    }

    /**
     * Display the specified resource.
     * @param Carousel $carousel
     * @return mixed
     */
    public function show(Carousel $carousel)
    {
        return $carousel;
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
            'name' => 'required|max:15|unique:carousels,name',
            'weight' => 'numeric',
            'image' => 'required',
            'desc' => 'required',
            'url' => 'required|url|unique:carousels,url',
        ]);
        $model = Carousel::create($request->all());
        //更新缓存
        Redis::DEL('carousel');
        return response($model);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Carousel $carousel
     * @return \Illuminate\Http\Response
     */
    public function edit(Carousel $carousel)
    {
        return view('admin.carousel.edit', ['id'=>$carousel->id]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Carousel $carousel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Carousel $carousel)
    {
        $this->validate($request, [
            'name' => 'required|max:15|unique:carousels,name,'.$carousel->id,
            'weight' => 'numeric',
            'image' => 'required',
            'desc' => 'required',
            'url' => 'required|url|unique:carousels,url,'.$carousel->id,
        ]);
        $model = $carousel;
        //如果跟新了图片就删除就图片
        if ($request->input('image') != $model->image) {
            if (file_exists(public_path() .'/uploads/'. $model->image)) {
                unlink(public_path() .'/uploads/'.  $model->image);
            }
        }
        $model->update($request->input());

        //更新缓存
        Redis::DEL('carousel');
        return response($model);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Carousel $carousel
     * @return \Illuminate\Http\Response
     */
    public function disable(Request $request, Carousel $carousel)
    {
        $model = $carousel;
        $status = $request->input('status', 0) ;
        $model->status = $status ? 0 : 1 ;
        $model->save();
        return response()->json(['errorCode' => '0', 'errorMsg' => 'success']);
    }
}
