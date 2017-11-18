<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['namespace' => 'Api\v1', 'prefix' => 'v1'], function () {
    //公用模块
    Route::post('image/upload-image/{type?}', 'ImageController@uploadImage')->name('api.image.upload');
    Route::get('image/image/', 'ImageController@image')->name('api.image.image');
    Route::post('image/image/', 'ImageController@imageAdd')->name('api.image.add');
    Route::post('image/imagejs/', 'ImageController@imageFrontAdd')->name('api.image.jsadd');
    Route::post('image/imageckeditor/', 'ImageController@imageCkeditorAdd')->name('api.image.imageckeditor');
    Route::post('image/image-cropper', 'ImageController@imageCropper')->name('api.image.cropper');

    Route::post('comment/comment', 'CommentController@postComment')->name('api.comment');
    Route::get('comment/list-comment/{type}/{id?}', 'CommentController@listComments')->name('api.comment.data');

    Route::get('config/single-type', 'ConfigController@singleType')->name('api.config.singletype');
    Route::post('send-email', 'ConfigController@sendEmail')->name('api.send-email');

    Route::group(['prefix' => 'app'], function () {
        //公用模块
        Route::resource('test', 'TestController');
        Route::get('test/search/{name}', 'TestController@search');

        Route::get('articles', 'AppController@articles')->name('api.app.articles');
        Route::get('article/{id}', 'AppController@articleInfo')->name('api.app.article.info');

        Route::get('carousels', 'AppController@carousels')->name('api.app.carousels');
        Route::get('about', 'AppController@about')->name('api.app.about');
        Route::get('categories', 'AppController@categories')->name('api.app.categories');
    });
});