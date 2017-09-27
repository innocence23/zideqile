@extends('adminlte::page')

@section('title', '单页设置')

@section('content_header')
    <h1>单页设置</h1>
    <ol class="breadcrumb">
        <li class="active">单页设置</li>
    </ol>
@stop

@section('content')
    <div ng-app="myModule" ng-controller="myController">
        <div class="container-fluid spark-screen">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        单页设置
                        <button type="button" class="btn btn-info" style="margin: -6px;float: right;" ng-click="toggle('add')">
                            <i class="glyphicon glyphicon-plus"></i> 新建
                        </button>
                    </div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <form class="form-inline">
                                <div class="form-group">
                                    <label for="search-name">名称</label>
                                    <input type="text" class="form-control" id="search-name" placeholder="名称" name="search-name">
                                </div>
                                <div class="form-group">
                                    <label for="search-status">状态</label>
                                    <select class="form-control" id="search-status" name="search-status">
                                        <option value="">请选择</option>
                                        <option value="0">禁用</option>
                                        <option value="1">启用</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn btn-primary" ng-click="btnquery()">查询</button>
                                    <input type="reset" class="btn btn-default" />
                                </div>
                            </form>
                            <hr/>
                            <table bs-table-control="bsTableControl" id="table"></table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="myModal" aria-labelledby="exampleModalLabel" data-backdrop="static">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="exampleModalLabel">@{{ form_title }}</h4>
                    </div>
                    <div class="modal-body">
                        <form name="myForm" id="form1" novalidate>
                            <div class="form-group" ng-class="{ 'has-error' : !myForm.type.$pristine && myForm.type.$invalid }">
                                <label for="single_page-type" class="control-label">类型:</label>

                                <select class="form-control" name="type" id="single_page-type" required ng-model="single_page.type"
                                        ng-options="key as value for (key, value) in single_type">
                                    <option value="">-- 请选择 --</option>
                                </select>
                                <p ng-show="!myForm.type.$pristine && myForm.type.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group" ng-class="{ 'has-error' : !myForm.name.$pristine && myForm.name.$invalid }">
                                <label for="single_page-name" class="control-label">名称:</label>
                                <input type="text" class="form-control" name="name" id="single_page-name" ng-maxlength="15"
                                       required ng-model="single_page.name">
                                <p ng-show="!myForm.name.$pristine && myForm.name.$invalid" class="help-block">
                                    <span ng-show="myForm.name.$error.required" class="help-block">不能为空</span>
                                    <span ng-show="myForm.name.$error.maxlength" class="help-block">不能超过15个字符</span>
                                </p>
                            </div>
                            <div class="form-group <?php if($errors->has('content')) echo 'has-error';?>" >
                                <label for="single_page-content" class="control-label">内容:</label>
                                <textarea name="content" id="editor1" rows="10" cols="80"></textarea>
                                <p ng-show=" <?php if($errors->has('content')) {echo true;} else{ echo false; } ?>" class="help-block">内容不能为空</p>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="submit" class="btn btn-primary" form="form1" ng-disabled="myForm.$invalid"
                                ng-click="save(modalstate, id)">保存
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('css')
@stop

@section('js')
    {{--<script src="http://sdk.ckeditor.com/vendor/ckeditor/ckeditor.js" type="text/javascript"></script>--}}
    <script src="https://cdn.bootcss.com/ckeditor/4.7.2/ckeditor.js" type="text/javascript"></script>
    <script>
        CKEDITOR.replace( 'editor1', {
            extraPlugins: 'uploadimage,image2',
            language: 'zh-cn',
            height: 300,
            allowedContent: true, //解决源码切换的问题
            filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?type=Images',
            filebrowserImageUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images'
        });

        //bootstraptable 过渡到ng-click函数
        function ngclick(row, index, value) {
            var m = '<a href="" ng-click="$parent.toggle( \'edit\', ' + index.id + ')" class="btn btn-default">修改</a>';
            var e = row == 1 ?
                '<button class="btn btn-default" type="button" ng-click="$parent.disableditem(' + row + ',' + index.id + ')">禁用</button> ' :
                '<button class="btn btn-default" type="button" ng-click="$parent.disableditem(' + row + ',' + index.id + ')">启用</button> ';
            return e + m;
        }

        angular.module('myModule', ['bsTable'])
            .controller('myController', function ($scope, $http) {
                //初始化表格
                $scope.bsTableControl = {
                    options: {
                        striped: true,                      //是否显示行间隔色
                        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                        pagination: true,                   //是否显示分页（*）
                        sortName: 'id',
                        sortOrder: 'desc',
                        onSort: function (name, order) {
                            this.sortName = name;
                            this.sortOrder = order;
                        },
                        queryParams: function (params) { //传递参数（*）
                            return {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                                //search:params.search 自带的搜索框 我把自带的先隐藏了，
                                limit: params.limit,   //页面大小
                                offset: params.offset,  //页码
                                order: params.order,
                                sort: params.sort,
                                name: $("#search-name").val(),
                                status: $("#search-status").val()
                                //请求服务器数据时，你可以通过重写参数的方式添加一些额外的参数，例如 toolbar 中的参数 如果 queryParamsType = 'limit' ,返回参数必须包含
                                //limit, offset, search, sort, order 否则, 需要包含: pageSize, pageNumber, searchText, sortName, sortOrder. 返回false将会终止请求
                            };
                        },
                        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                        pageNumber: 1,                       //初始化加载第一页，默认第一页
                        pageSize:"{{$setting['bstable_line_count']}}",      //每页的记录行数（*）读取数据库配置
                        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
                        clickToSelect: true,                //是否启用点击选中行
                        uniqueId: "id",                     //每一行的唯一标识，一般为主键列
                        url: "{{route('single-page.lists')}}",
                        columns: [{
                            field: 'id',
                            title: 'ID',
                            valign: 'middle',
                            sortable: true
                        }, {
                            field: 'id',
                            title: 'Id',
                            valign: 'middle'
                        },{
                            field: 'type',
                            title: '类型',
                            valign: 'middle'
                        }, {
                            field: 'name',
                            title: '名称',
                            valign: 'middle'
                        }, {
                            field: 'content',
                            title: '内容',
                            valign: 'middle'
                        }, {
                            field: 'status',
                            title: '状态',
                            valign: 'middle',
                            formatter: function (value, row, index) {
                                return value == 1 ?
                                    '<span class="label label-success">正常</span>'
                                    : '<span class="label label-danger">禁用</span>';
                            }
                        }, {
                            field: 'status',
                            title: '操作',
                            align: 'center',
                            valign: 'middle',
                            formatter: ngclick
                        }]
                    }
                };

                //搜索按钮事件
                $scope.btnquery = function () {
                    $("#table").bootstrapTable('refresh', {url: "{{route('single-page.lists')}}"});
                    //主要解决在不是第一页搜索的情况下 如在第二页搜索搜索不到数据，但其实第一页是有数据的
                };
                //回车搜索事件
                $('#search-name').keypress(function(event){
                    if(event.keyCode == "13")
                        $scope.btnquery();
                });
                //获取类型
                $http.get("{{route('api.config.singletype')}}")
                    .then(function successCallback(response) {
                        $scope.single_type = response.data;
                    });

                //禁用按钮事件
                $scope.disableditem = function (status, id) {
                    swal({
                        title: "确定此操作吗？",
                        text: "",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    }).then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: '/admin/single-page/' + id,
                                type: 'POST',
                                data: {
                                    status: status,
                                    _token: '{{ csrf_token() }}'
                                },
                                dataType: 'json',
                                success: function (data, textStatus, jqXHR) {
                                    swal("成功!", "", "success", {timer: 800});
                                    $("#table").bootstrapTable('refresh');
                                },
                                error: function (xhr, textStatus) {
                                    swal("错误!", "", "error", {timer: 2000});
                                }
                            });
                        } else {
                            swal("你已经取消!", "", "success", {timer: 800});
                        }
                    });
                };

                //添加和修改按钮ng-click触发函数
                $scope.toggle = function (modalstate, id) {
                    //避免下次第二次add时候直接输入框是红色警告的
                    $scope.myForm.$setPristine();
                    $scope.modalstate = modalstate;
                    switch (modalstate) {
                        case 'add':
                            $scope.form_title = "新建";
                            $scope.single_page = {};
                            CKEDITOR.instances.editor1.setData('');
                            //setTimeout(CKEDITOR.instances.editor1.setData(''), 0);
                            break;
                        case 'edit':
                            var url = "{{ route('single-page.show', '') }}";
                            url += '/' + id;
                            $scope.form_title = "修改--" + id;
                            $scope.id = id;
                            $http.get(url)
                                .then(function successCallback(response) {
                                    $scope.single_page = response.data;
                                    //类型转换 要不无法选中
                                    $scope.single_page.type += '';
                                    //setData 是异步的
                                    setTimeout(CKEDITOR.instances.editor1.setData(response.data.content), 0);
                                });
                            break;
                        default:
                            break;
                    }
                    $('#myModal').modal('show');
                };

                //添加和修改保存记录
                $scope.save = function (modalstate, id) {
                    var url = "{{route('single-page.store')}}";
                    //content 用ckeditor
                    $scope.single_page.content = CKEDITOR.instances.editor1.getData();
                    var dataparam = $.param($scope.single_page);
                    if (modalstate === 'edit') {
                        url += '/' + id;
                        dataparam += '&_method=put';
                    }
                    $http({
                        url: url,
                        method: "POST",
                        data: dataparam,
                        headers: {'Content-Type': 'application/x-www-form-urlencoded'}
                    }).then(function successCallback(response) {
                        swal("成功", '', "success", {timer: 800});
                        $('#myModal').modal('hide');
                        if (modalstate === 'edit') { //修改时刷新当前页
                            $("#table").bootstrapTable('refresh');
                        } else { //添加时刷新返回的第一页
                            $("#table").bootstrapTable('refresh', {url: "{{route('single-page.lists')}}"});
                        }
                    }, function errorCallback(response) {
                        var errorMsg = '';
                        $.each(response.data.errors.name, function(i,val){
                            errorMsg += val + "\n";
                        });
                        swal("错误", errorMsg, "error", {timer: 2000});
                    });
                };
            });
    </script>
@stop