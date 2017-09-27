@extends('adminlte::page')

@section('title', '文章添加')

@section('content_header')
    <h1>文章管理</h1>
    <ol class="breadcrumb">
        <li class="active">文章添加</li>
    </ol>
@stop

@section('content')
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
    <div ng-app="myModule" ng-controller="myController">
        <div class="container-fluid spark-screen" >
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">新建文章</div>
                    <div class="panel-body container-fluid">
                        {{--<form name="myForm" ng-submit="save()" novalidate>--}}
                        <form name="myForm" novalidate enctype="multipart/form-data" action="{{route('post.store')}}" method="POST">
                            {{ csrf_field() }}
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.name.$dirty && myForm.name.$invalid }">
                                <label for="name" class="control-label">标题:</label>
                                <input type="text" class="form-control" name="name" id="name" required ng-model="post.name">
                                <p ng-show="myForm.name.$dirty && myForm.name.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.keyword.$dirty && myForm.keyword.$invalid }">
                                <label for="keyword" class="control-label">关键字:</label>
                                <input type="text" class="form-control" name="keyword" id="keyword" required ng-model="post.keyword">
                                <p ng-show="myForm.keyword.$dirty && myForm.keyword.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.desc.$dirty && myForm.desc.$invalid }">
                                <label for="desc" class="control-label">描述:</label>
                                <input type="text" class="form-control" name="desc" id="desc" required ng-model="post.desc">
                                <p ng-show="myForm.desc.$dirty && myForm.desc.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.cate_id.$dirty && myForm.cate_id.$invalid }">
                                <label for="cate_id" class="control-label">所属分类:</label>
                                <select chosen class="form-control" name="cate_id" id="cate_id"
                                        placeholder-text-single="'请选择分类'" no-results-text="'未找到'"
                                        required ng-model="post.cate_id"
                                        {{--ng-options="s.id as s.name for s in data.categories">--}}
                                        ng-options="s.id as s.name group by s.group for s in data.categories">
                                    <option value=""></option>
                                </select>
                                <p ng-show="myForm.cate_id.$dirty && myForm.cate_id.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm['tags[]'].$dirty && myForm['tags[]'].$invalid }">
                                <label for="tags" class="control-label">所属TAG:</label>
                                <select multiple chosen class="form-control" name="tags[]" id="tags"
                                        placeholder-text-multiple="'请选择TAG'" no-results-text="'未找到'"
                                        required ng-model="post.tags" ng-options="s.id as s.name for s in data.tags">
                                    <option value=""></option>
                                </select>
                                <p ng-show="myForm['tags[]'].$dirty && myForm['tags[]'].$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group"  ng-class="{ 'has-error' : myForm.slug.$dirty && myForm.slug.$invalid }">
                                <label for="slug" class="control-label">Slug:</label>
                                <input type="text" class="form-control" name="slug" id="slug" required ng-model="post.slug">
                                <p ng-show="myForm.slug.$dirty && myForm.slug.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group">
                                <label for="image" class="control-label">头图:</label>
                                <input type="file" class="form-control" name="image" id="image" ng-model="post.image">
                            </div>
                            <div class="form-group <?php if($errors->has('content')) echo 'has-error';?>" >
                                <label for="content" class="control-label">内容:</label>
                                <textarea name="content" id="editor1" rows="10" cols="80" ng-model="post.content"></textarea>
                                <p ng-show=" <?php if($errors->has('content')) {echo true;} else{ echo false; } ?>" class="help-block">内容不能为空</p>
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
        $("#image").fileinput({
            language: 'zh',
            showUpload: false,
            allowedFileExtensions: ['jpg','jpeg', 'png', 'gif']
        });

        CKEDITOR.replace( 'editor1', {
            extraPlugins: 'uploadimage,image2',
            language: 'zh-cn',
            height: 300,
            allowedContent: true, //解决源码切换的问题
            //filebrowserImageUploadUrl: '{{route("api.image.imageckeditor")}}',
            filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?type=Images',
            filebrowserImageUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
        });

        angular.module('myModule', ['localytics.directives'])
            .controller('myController', function ($scope, $http) {
                $scope.post = {
                    'name':'',
                    'keyword':'',
                    'desc':'',
                    'cate_id': "",
                    'slug':'',
                    'image':'',
                    'content':'',
                    'tags':''
                };

                //免得多次输入
                $("#name").on("blur",function(){
                    var tmp = $(this).val();
                    //if (!$('#keyword').val())
                    $scope.post.keyword = tmp;
                    $scope.post.desc = tmp;
                    $scope.post.slug = tmp;
                });

                $http({
                    url: "{{route('post.catetag')}}",
                    method:'GET'
                }).then(function successCallback(response) {
                    $scope.data = response.data;
                }, function errorCallback(response) {
                    swal("错误", '服务异常', "error", {timer: 2000});
                });
            })
    </script>
@endsection