<?php

namespace App\Http\Controllers\Api\v1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Session;

class ImageController extends Controller
{
    private $types = [
        'friendlink' => [200, 200],
        'logo' => [100, 100],
        'article' => [500, 500],
        'default' => [300, 300],
        'carousel' => [1920, 512],
    ];

    //上传文件接口
    public function uploadImage(Request $request, $type = 'default')
    {
        $this->validate($request, [
            'image' => 'required|image',
        ]);
        $file = $request->file('image');
        if ($file->isValid()) {
            $res = $file->store(date('Y-m'), 'public');
            if (!isset($this->types[$type])) {
                $type = 'default';
            }
            $width = $this->types[$type][0];
            $height = $this->types[$type][1];
            Image::make(public_path('uploads/' . $res))->resize($width, $height)->save();
        }
        return response(['res' => $res]);
    }

    public function image(Request $request)
    {
        $image_dir = '/uploads/';
        $this->layout = false;
        $image = '';
        $btn = '';
        if (Session::get('image')) {
            $image = $image_dir . Session::get('image');
        } elseif ($img = $request->input('img', '')) {
            $image = $img;
        }
        if (Session::get('btn')) {
            $btn = Session::get('btn');
        } elseif ($bt = $request->input('btn', 'File')) {
            $btn = $bt;
        }
        return view('admin.commons.image')->withImage($image)->withBtn($btn);
    }

    /**
     * @param Request $request
     * @return mixed
     */
    public function imageAdd(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|image',
        ]);
        $file = $request->file('file');
        $btn = $request->input('btn', 'File');
        if ($file->isValid()) {
            $res = $file->store(date('Y-m'), 'public');
        }
        return redirect()->route('common.image')->withImage($res)->withBtn($btn);
    }

    public function imageCropper(Request $request)
    {
        $image = $request->input('image', '');
        $x = intval($request->input('x', 0));
        $y = intval($request->input('y', 0));
        $w = intval($request->input('w', 0));
        $h = intval($request->input('h', 0));
        //$img = Image::make('http://hd.okjiaoyu.cn/hd_FFS2OcBv6U.jpg')->resize(300, 200);
        //$img = Image::make(url($image))->crop(200, 400, 200, 300);
        //$img = Image::make($image)->crop(200, 400, 200, 300);
        $img = Image::make(public_path() . $image)->crop($w, $h, $x, $y);
        $img->save(public_path() . $image, 60);
        return $image;
    }

    /**
     * @param Request $request
     * @return mixed
     */
    public function imageCkeditorAdd(Request $request)
    {
        $this->validate($request, [
            'upload' => 'required|image',
        ]);
        $file = $request->file('upload');
        if($file->isValid()) {
            $res = $file->store(date('Y-m'), 'public');
            $response['filename'] = $res;
            return "/uploads/{$res}";
        } else {
            $response['error'] = 'Error while uploading file';
            return 'error!!!';
        }
    }

    /**
     * @param Request $request
     * @return mixed
     */
    public function imageFrontAdd(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|image',
        ]);
        $file = $request->file('file');
        if($file->isValid()) {
            $res = $file->store(date('Y-m'), 'public');
            $response['filename'] = $res;
        } else {
            $response['error'] = 'Error while uploading file';
        }
        return $response;
    }
}