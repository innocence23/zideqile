@extends('adminlte::page')

@section('title', '字典修改')

@section('content_header')
    <h1>字典管理</h1>
    <ol class="breadcrumb">
        <li><a href="{{route('dict.index')}}"> 字典管理 </a></li>
        <li class="active">字典编辑</li>
    </ol>
@stop

@section('content')
    <div ng-app="myModule" ng-controller="myController">
        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>Whoops!</strong> 填写的信息不完整。<br>
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="container-fluid spark-screen" >
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">类别字典</div>
                    <div class="panel-body container-fluid">
                        {{--<form name="myForm" ng-submit="save()" novalidate>--}}
                        <form name="myForm" novalidate enctype="multipart/form-data" action="{{route('dict.update', $id)}}" method="POST">
                            {{ csrf_field() }}
                            <input type="hidden"  name="_method" value="PUT">
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.jianti.$dirty && myForm.jianti.$invalid }">
                                <label for="jianti" class="control-label">简体:</label>
                                <input type="text" class="form-control" name="jianti" id="jianti" required ng-model="dict.jianti">
                                <p ng-show="myForm.jianti.$dirty && myForm.jianti.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.fanti.$dirty && myForm.fanti.$invalid }">
                                <label for="fanti" class="control-label">繁体:</label>
                                <input type="text" class="form-control" name="fanti" id="fanti" required ng-model="dict.fanti">
                                <p ng-show="myForm.fanti.$dirty && myForm.fanti.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.slug.$dirty && myForm.slug.$invalid }">
                                <label for="slug" class="control-label">Slug:</label>
                                <input type="text" class="form-control" name="slug" id="slug" required ng-model="dict.slug">
                                <p ng-show="myForm.slug.$dirty && myForm.slug.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.pinyin.$dirty && myForm.pinyin.$invalid }">
                                <label for="pinyin" class="control-label">拼音:</label>
                                <input type="text" class="form-control" name="pinyin" id="pinyin" required ng-model="dict.pinyin">
                                <p ng-show="myForm.pinyin.$dirty && myForm.pinyin.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.bushou_id.$dirty && myForm.bushou_id.$invalid }">
                                <label for="bushou_id" class="control-label">部首:</label>
                                <select chosen class="form-control" name="bushou_id" id="bushou_id"
                                        placeholder-text-single="'请选择部首'" no-results-text="'未找到'"
                                        required ng-model="dict.bushou_id"
                                        ng-options="s.id as s.name group by s.group for s in data.bushous">
                                    <option value=""></option>
                                </select>
                                <p ng-show="myForm.bushou_id.$dirty && myForm.bushou_id.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.cate_id.$dirty && myForm.cate_id.$invalid }">
                                <label for="cate_id" class="control-label">所属分类:</label>
                                <select chosen class="form-control" name="cate_id" id="cate_id"
                                        placeholder-text-single="'请选择分类'" no-results-text="'未找到'"
                                        required ng-model="dict.cate_id"
                                        ng-options="s.id as s.name group by s.group for s in data.categories">
                                    <option value=""></option>
                                </select>
                                <p ng-show="myForm.cate_id.$dirty && myForm.cate_id.$invalid" class="help-block">不能为空</p>
                            </div>
			                <div class="form-group"  ng-class="{ 'has-error' : myForm['tags[]'].$dirty && myForm['tags[]'].$invalid }">
                                <label for="tags" class="control-label">所属TAG:</label>
                                <select multiple chosen class="form-control" name="tags[]" id="tags"
                                        placeholder-text-multiple="'请选择TAG'" no-results-text="'未找到'"
                                        required ng-model="dict.tags" ng-options="s.id as s.name for s in data.tags">
                                    <option value=""></option>
                                </select>
                                <p ng-show="myForm['tags[]'].$dirty && myForm['tags[]'].$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group">
                                <label for="image" class="control-label">甲骨文:</label>
                                <input type="file" class="form-control" name="image" id="image" ng-model="dict.image">
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.shuowen.$dirty && myForm.shuowen.$invalid }">
                                <label for="shuowen" class="control-label">说文解字:</label>
                                <input type="text" class="form-control" name="shuowen" id="shuowen" required ng-model="dict.shuowen">
                                <p ng-show="myForm.shuowen.$dirty && myForm.shuowen.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.yitizi.$dirty && myForm.yitizi.$invalid }">
                                <label for="yitizi" class="control-label">异体字:</label>
                                <input type="text" class="form-control" name="yitizi" id="yitizi" required ng-model="dict.yitizi">
                                <p ng-show="myForm.yitizi.$dirty && myForm.yitizi.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group <?php if($errors->has('jieshi')) echo 'has-error';?>" >
                                <label for="jieshi" class="control-label">解释:</label>
                                <textarea name="jieshi" id="editor1" rows="10" cols="80" ng-model="dict.jieshi"></textarea>
                                <p ng-show=" <?php if($errors->has('jieshi')) {echo true;} else{ echo false; } ?>" class="help-block">内容不能为空</p>
                            </div>
                            <div class="form-group <?php if($errors->has('cizu')) echo 'has-error';?>" >
                                <label for="cizu" class="control-label">词组:</label>
                                <textarea name="cizu" id="editor2" rows="10" cols="80" ng-model="dict.cizu"></textarea>
                                <p ng-show=" <?php if($errors->has('cizu')) {echo true;} else{ echo false; } ?>" class="help-block">内容不能为空</p>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block" ng-disabled="myForm.$invalid">保存</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
    <script src="https://cdn.bootcss.com/ckeditor/4.7.2/ckeditor.js" type="text/javascript"></script>
    <script>
        angular.module('myModule', ['localytics.directives'])
            .controller('myController', function ($scope, $http) {
                $http({
                    url: "{{route('dict.catebushou')}}",
                    method:'GET'
                }).then(function successCallback(response) {
                    $scope.data = response.data;
                }, function errorCallback(response) {
                    swal("错误", '服务异常', "error", {timer: 2000});
                });

                $http({
                    url: "{{route('dict.show', $id)}}",
                    method:'GET'
                }).then(function successCallback(response) {
                    $scope.dict = response.data;
                    CKEDITOR.replace( 'editor1', {
                        extraPlugins: 'uploadimage,image2',
                        language: 'zh-cn',
                        height: 280,
                        allowedContent: true, //解决源码切换的问题
                        filebrowserImageUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                        filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?type=Images'
                    });
                    CKEDITOR.replace( 'editor2', {
                        extraPlugins: 'uploadimage,image2',
                        language: 'zh-cn',
                        height: 200,
                        allowedContent: true, //解决源码切换的问题
                        filebrowserImageUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                        filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?type=Images'
                    });
                    $("#image").fileinput({
                        language: 'zh',
                        showUpload: false,
                        allowedFileExtensions: ['jpg','jpeg', 'png', 'gif'],
                        initialPreview: [
                            '/uploads/'+response.data.image
                        ],
                        initialPreviewAsData: true,
                        initialCaption: response.data.image
                    });
                }, function errorCallback(response) {
                    swal("错误", '服务数据异常', "error", {timer: 2000});
                });
            });
    </script>
@endsection