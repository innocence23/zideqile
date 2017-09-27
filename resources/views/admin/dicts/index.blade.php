@extends('adminlte::page')

@section('title', '字典管理')

@section('content_header')
    <h1>字典管理</h1>
    <ol class="breadcrumb">
        <li class="active">字典管理</li>
    </ol>
@stop

@section('content')
    @if (Session::has('flash_message'))
        <div class="alert alert-success">
            {{Session::get('flash_message')}}
        </div>
    @endif

    <div ng-app="myModule" ng-controller="myController">
        <div class="container-fluid spark-screen" >
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        字典管理
                        <a href="{{route('dict.create')}}" class="btn btn-info" style="margin: -6px;float: right;">
                            <i class="glyphicon glyphicon-plus"></i> 新建
                        </a>
                    </div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <form class="form-inline">
                                <div class="form-group">
                                    <label for="search-name">简体</label>
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
                                    <label for="cate_id" class="control-label">分类:</label>
                                    <select chosen class="form-control" name="cate_id" id="cate_id"
                                            ng-model="dict.cate_id"
                                            placeholder-text-single="'请选择分类'" no-results-text="'未找到'"
                                            ng-options="s.id as s.name for s in data.categories">
                                        <option value=""></option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="bushou_id" class="control-label">部首:</label>
                                    <select chosen class="form-control" name="bushou_id" id="bushou_id"
                                            ng-model="dict.bushou_id"
                                            placeholder-text-single="'请选择部首'" no-results-text="'未找到'"
                                            ng-options="s.id as s.name for s in data.bushous">
                                        <option value=""></option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="tags" class="control-label">所属TAG:</label>
                                    <select chosen class="form-control" name="tags[]" id="tags"
                                            placeholder-text-single="'请选择TAG'" no-results-text="'未找到'"
                                            ng-model="dict.tags" ng-options="s.id as s.name for s in data.tags">
                                        <option value=""></option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn btn-primary" onclick="btnquery()">查询</button>
                                    <input type="reset" class="btn btn-default" />
                                </div>
                            </form>
                            <hr/>
                            <table id="table"></table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@section('css')
    <style>
        @media (min-width:768px){
            .chosen-container.chosen-container-single {
                width: auto !important;
            }
        }
    </style>
@stop
@section('js')
    <script>
        //回车搜索事件
        $('#search-name').keypress(function(event){
            if(event.keyCode == "13")
                btnquery();
        });
        $('#table').bootstrapTable({
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortName: 'id',
            sortOrder: 'desc',
            onSort: function (name, order) {
                this.sortName = name;
                this.sortOrder = order;
            },
            queryParams: function(params) { //传递参数（*）
                return {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                    //search:params.search 自带的搜索框 我把自带的先隐藏了，
                    limit: params.limit,   //页面大小
                    offset: params.offset,  //页码
                    order: params.order,
                    sort: params.sort,
                    name: $("#search-name").val(),
                    status: $("#search-status").val(),
                    cate_id: $("#cate_id").val(),
                    bushou_id: $("#bushou_id").val(),
		            tags: $("#tags").val()
                    //请求服务器数据时，你可以通过重写参数的方式添加一些额外的参数，例如 toolbar 中的参数 如果 queryParamsType = 'limit' ,返回参数必须包含
                    //limit, offset, search, sort, order 否则, 需要包含: pageSize, pageNumber, searchText, sortName, sortOrder. 返回false将会终止请求
                };
            },
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       //初始化加载第一页，默认第一页
            pageSize:"{{$setting['bstable_line_count']}}",     //每页的记录行数（*）读取数据库配置
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            url: "{{route('dict.lists')}}",
            columns: [{
                field: 'id',
                title: 'ID',
                valign: 'middle',
                sortable: true
            }, {
                field: 'fanti',
                title: '繁体',
                valign: 'middle',
                sortable: true,
                formatter:  function (value, row, index) {
                    return '<a target="_blank" href="/dict/'+row.slug+'">'+value+'</a>';
                }
            }, {
                field: 'jianti',
                title: '简体',
                valign: 'middle',
                sortable: true,
                formatter:  function (value, row, index) {
                    return '<a target="_blank" href="/dict/'+row.slug+'">'+value+'</a>';
                }
            }, {
                field: 'pinyin',
                title: '拼音',
                valign: 'middle'
            }, {
                field: 'cate_name',
                title: '分类',
                valign: 'middle'
            }, {
                field: 'bushou_name',
                title: '部首',
                valign: 'middle'
            }, {
                field: 'tag_name',
                title: 'Tags',
                valign: 'middle'
            }, {
                field: 'image',
                title: '甲骨图片',
                valign: 'middle',
                formatter:  function (value, row, index) {
                    return '<image width="40px" height="40px" title="'+ row.shuowen +'" src="/uploads/'+value+'" />';
                }
            }, {
                field: 'created_at',
                title: '创建时间',
                valign: 'middle',
                sortable: true
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
                formatter:  function (value, row, index) {
                    var m = '<a class="btn btn-default" href="/admin/dict/'+row.id+'/edit">修改</a>';
                    var e  = value == 1 ?
                        '<button class="btn btn-default" type="button" onclick="disableditem('+value+ ',' + row.id +')">禁用</button> ':
                        '<button class="btn btn-default" type="button" onclick="disableditem('+value+ ',' + row.id +')">启用</button> ';
                    return e + m;
                }
            }]
        });
        //搜索按钮事件
        function btnquery() {
            $("#table").bootstrapTable('refresh', {url: "{{route('dict.lists')}}"});
        }
        //禁用按钮事件
        function disableditem(status, id) {
            swal({
                title: "确定此操作吗？",
                text: "",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            }).then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: '/admin/dict/'+id,
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
        }
        angular.module('myModule', ['localytics.directives'])
            .controller('myController', function ($scope, $http) {
                $scope.dict = {
                    cate_id: 0,
                    bushou: 0,
                    tags: 0
                };
                $http({
                    url: "{{route('dict.catebushou')}}",
                    method:'GET'
                }).then(function successCallback(response) {
                    $scope.data = response.data;
                }, function errorCallback(response) {
                    swal("错误", errorMsg, "error", {timer: 2000});
                })
            });
    </script>
@endsection