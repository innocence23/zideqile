@extends('adminlte::page')

@section('title', '系统参数设置')

@section('content_header')
    <h1>系统参数设置</h1>
    <ol class="breadcrumb">
        <li class="active">系统参数设置</li>
    </ol>
@stop

@section('content')
    <div ng-app="myModule" ng-controller="myController">
        <div class="container-fluid spark-screen">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        系统参数设置
                        <button type="button" class="btn btn-info" style="margin: -6px;float: right;" ng-click="toggle('add')">
                            <i class="glyphicon glyphicon-plus"></i> 新建
                        </button>
                    </div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <table bs-table-control="bsTableControl" id="table"></table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="myModal" aria-labelledby="exampleModalLabel" data-backdrop="static">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="exampleModalLabel">@{{ form_title }}</h4>
                    </div>
                    <div class="modal-body">
                        <form name="myForm" id="form1" novalidate>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group" ng-class="{ 'has-error' : !myForm.name.$pristine && myForm.name.$invalid }">
                                        <label for="setting-name" class="control-label">网站名称:</label>
                                        <input type="text" class="form-control" name="name" id="setting-name" required
                                               ng-model="setting.name">
                                        <p ng-show="!myForm.name.$pristine && myForm.name.$invalid" class="help-block">不能为空</p>
                                    </div>
                                    <div class="form-group" ng-class="{ 'has-error' : !myForm.logo.$pristine && myForm.logo.$invalid }">
                                        <label for="setting-logo" class="control-label">logo:</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="logo" id="setting-logo" required
                                                   ng-model="setting.logo">
                                            <span class="input-group-btn" id="setting-logo_btn">
                                                <button class="btn btn-default" type="button">上传图片</button>
                                            </span>
                                        </div>
                                        <p ng-show="!myForm.logo.$pristine && myForm.logo.$invalid" class="help-block">不能为空</p>
                                    </div>
                                    <div class="form-group"
                                         ng-class="{ 'has-error' : !myForm.bgimage.$pristine && myForm.bgimage.$invalid }">
                                        <label for="setting-bgimage" class="control-label">背景图:</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="bgimage" id="setting-bgimage" required
                                                   ng-model="setting.bgimage">
                                            <span class="input-group-btn" id="setting-bgimage_btn">
                                                <button class="btn btn-default" type="button">上传图片</button>
                                            </span>
                                        </div>
                                        <p ng-show="!myForm.bgimage.$pristine && myForm.bgimage.$invalid" class="help-block">不能为空</p>
                                    </div>
                                    <div class="form-group"
                                         ng-class="{ 'has-error' : !myForm.bstable_line_count.$pristine && myForm.bstable_line_count.$invalid }">
                                        <label for="setting-bstable_line_count" class="control-label">BootstrapTable行数:</label>
                                        <input type="number" class="form-control" name="bstable_line_count" min="1" max="200"
                                               id="setting-bstable_line_count" required ng-model="setting.bstable_line_count">
                                        <p ng-show="!myForm.bstable_line_count.$pristine && myForm.bstable_line_count.$invalid"
                                           class="help-block">
                                            <span ng-show="myForm.bstable_line_count.$error.required" class="help-block">不能为空</span>
                                            <span ng-show="myForm.bstable_line_count.$error.min" class="help-block">最小值1</span>
                                            <span ng-show="myForm.bstable_line_count.$error.max" class="help-block">最大值200</span>
                                        </p>
                                    </div>
                                    <div class="form-group" ng-class="{ 'has-error' : !myForm.desc.$pristine && myForm.desc.$invalid }">
                                        <label for="setting-desc" class="control-label">网站描述:</label>
                                        <input type="text" class="form-control" name="desc" id="setting-desc" required
                                               ng-model="setting.desc">
                                        <p ng-show="!myForm.desc.$pristine && myForm.desc.$invalid" class="help-block">不能为空</p>
                                    </div>
                                    <div class="form-group"
                                         ng-class="{ 'has-error' : !myForm.copyright.$pristine && myForm.copyright.$invalid }">
                                        <label for="setting-copyright" class="control-label">版权:</label>
                                        <input type="text" class="form-control" name="copyright" id="setting-copyright" required
                                               ng-model="setting.copyright">
                                        <p ng-show="!myForm.copyright.$pristine && myForm.copyright.$invalid" class="help-block">不能为空</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group" ng-class="{ 'has-error' : !myForm.qq.$pristine && myForm.qq.$invalid }">
                                        <label for="setting-qq" class="control-label">QQ:</label>
                                        <input type="text" class="form-control" name="qq" id="setting-qq"
                                               ng-minlength="5" ng-maxlength="15" required ng-model="setting.qq">
                                        <p ng-show="!myForm.qq.$pristine && myForm.qq.$invalid" class="help-block">
                                            <span ng-show="myForm.qq.$error.required" class="help-block">不能为空</span>
                                            <span ng-show="myForm.qq.$error.minlength || myForm.qq.$error.maxlength " class="help-block">5-15位</span>
                                        </p>
                                    </div>
                                    <div class="form-group">
                                        <label for="setting-weixin" class="control-label">微信:</label>
                                        <input type="text" class="form-control" name="info" id="setting-weixin" ng-model="setting.weixin"
                                               placeholder="官网微信: 搜索“公众号” 可为空">
                                    </div>
                                    <div class="form-group">
                                        <label for="setting-weibo" class="control-label">微博:</label>
                                        <input type="text" class="form-control" name="weibo" id="setting-weibo" ng-model="setting.weibo"
                                               placeholder="可为空">
                                    </div>
                                    <div class="form-group">
                                        <label for="setting-google" class="control-label">GOOGLE+:</label>
                                        <input type="text" class="form-control" name="google" id="setting-google" ng-model="setting.google"
                                               placeholder="可为空">
                                    </div>
                                    <div class="form-group">
                                        <label for="setting-facebook" class="control-label">FaceBook:</label>
                                        <input type="text" class="form-control" name="facebook" id="setting-facebook"
                                               ng-model="setting.facebook" placeholder="可为空">
                                    </div>
                                    <div class="form-group">
                                        <label for="setting-twitter" class="control-label">Twitter:</label>
                                        <input type="text" class="form-control" name="twitter" id="setting-twitter"
                                               ng-model="setting.twitter" placeholder="可为空">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group" ng-class="{ 'has-error' : !myForm.email.$pristine && myForm.email.$invalid }">
                                        <label for="setting-email" class="control-label">Email:</label>
                                        <input type="email" class="form-control" name="email" id="setting-email" required
                                               ng-model="setting.email">
                                        <p ng-show="!myForm.email.$pristine && myForm.email.$invalid" class="help-block">
                                            <span ng-show="myForm.email.$error.required" class="help-block">不能为空</span>
                                            <span ng-show="myForm.email.$error.email" class="help-block">非法的邮箱</span>
                                        </p>
                                    </div>
                                    <div class="form-group"
                                         ng-class="{ 'has-error' : !myForm.contact.$pristine && myForm.contact.$invalid }">
                                        <label for="setting-contact" class="control-label">网站联系人:</label>
                                        <input type="text" class="form-control" name="contact" id="setting-contact" required
                                               ng-model="setting.contact">
                                        <p ng-show="!myForm.contact.$pristine && myForm.contact.$invalid" class="help-block">不能为空</p>
                                    </div>
                                    <div class="form-group"
                                         ng-class="{ 'has-error' : !myForm.position.$pristine  && myForm.position.$invalid }">
                                        <label for="setting-position" class="control-label">详细地址:</label>
                                        <input type="text" class="form-control" name="position" id="setting-position" required
                                               ng-model="setting.position">
                                        <p ng-show="!myForm.position.$pristine && myForm.position.$invalid" class="help-block">不能为空</p>
                                    </div>
                                    <div class="form-group"
                                         ng-class="{ 'has-error' : (!myForm.position_x.$pristine  && myForm.position_x.$invalid) ||
                                         (!myForm.position_y.$pristine  && myForm.position_y.$invalid) }">
                                        <label for="setting-position" class="control-label">地址坐标:</label>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <input type="text" class=" form-control" name="position_x" required
                                                       ng-model="setting.position_x" placeholder="116.417854 X轴">
                                            </div>
                                            <div class="col-lg-6">
                                                <input type="text" class=" form-control" name="position_y" required
                                                       ng-model="setting.position_y" placeholder="39.921988 Y轴">
                                            </div>
                                        </div>
                                        <p ng-show="(!myForm.position_x.$pristine && myForm.position_x.$invalid) ||
                                         (!myForm.position_y.$pristine && myForm.position_y.$invalid)" class="help-block">不能为空</p>
                                    </div>
                                    <div class="form-group">
                                        <label for="setting-fax" class="control-label">传真:</label>
                                        <input type="text" class="form-control" name="fax" id="setting-fax" ng-model="setting.fax"
                                               placeholder="可为空">
                                    </div>
                                    <div class="form-group">
                                        <label for="setting-info" class="control-label">备注:</label>
                                        <input type="text" class="form-control" name="info" id="setting-info" ng-model="setting.info"
                                               placeholder="可为空">
                                    </div>
                                </div>
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
    <script>
        $('#setting-logo_btn').click(function () {
            var url = '{{route('api.image.image')}}';
            url += '/?btn=setting-logo&img=' + $('#setting-logo').val();
            layer.open({
                type: 2,
                title: '图片处理',
                maxmin: true, //开启最大化最小化按钮
                area: ['80%', '90%'],
                content: url
            });
        });
        $('#setting-bgimage_btn').click(function () {
            var url = '{{route('api.image.image')}}';
            url += '/?btn=setting-bgimage&img=' + $('#setting-bgimage').val();
            layer.open({
                type: 2,
                title: '图片处理',
                maxmin: true, //开启最大化最小化按钮
                area: ['80%', '90%'],
                content: url
            });
        });

        $('#friend_link-pic_btn').click(function () {
            var url = '{{route('api.image.image')}}';
            url += '/?img=' + $('#File').val();
            layer.open({
                type: 2,
                title: '图片处理',
                maxmin: true, //开启最大化最小化按钮
                area: ['80%', '90%'],
                content: url
            });
        });

        //bootstraptable 过渡到ng-click函数
        function ngclick(row, index, value) {
            return '<a href="" ng-click="$parent.toggle( \'edit\', ' + index.id + ')" class="btn btn-default">修改</a>';
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
                        pageSize:"{{$setting['bstable_line_count']}}",     //每页的记录行数（*）读取数据库配置
                        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
                        clickToSelect: true,                //是否启用点击选中行
                        uniqueId: "id",                     //每一行的唯一标识，一般为主键列
                        url: "{{route('setting.lists')}}",
                        columns: [{
                            field: 'name',
                            title: '网站名称',
                            valign: 'middle'
                        }, {
                            field: 'bstable_line_count',
                            title: 'BootstrapTable行数',
                            valign: 'middle'
                        }, {
                            field: 'qq',
                            title: 'QQ',
                            valign: 'middle'
                        }, {
                            field: 'created_at',
                            title: '创建时间',
                            valign: 'middle'
                        }, {
                            field: 'updated_at',
                            title: '最后修改时间',
                            valign: 'middle'
                        }, {
                            field: 'status',
                            title: '操作',
                            align: 'center',
                            valign: 'middle',
                            formatter: ngclick
                        }]
                    }
                };

                //添加和修改按钮ng-click触发函数
                $scope.toggle = function (modalstate, id) {
                    //避免下次第二次add时候直接输入框是红色警告的
                    $scope.myForm.$setPristine();

                    $scope.modalstate = modalstate;
                    switch (modalstate) {
                        case 'add':
                            $scope.form_title = "新建";
                            $scope.setting = {};
                            break;
                        case 'edit':
                            $scope.form_title = "修改--" + id;
                            $scope.id = id;
                            $http.get('/admin/setting/' + id)
                                .then(function successCallback(response) {
                                    $scope.setting = response.data;
                                });
                            break;
                        default:
                            break;
                    }
                    $('#myModal').modal('show');
                };

                //添加和修改保存记录
                $scope.save = function (modalstate, id) {
                    var url = "{{route('setting.store')}}";
                    var dataparam = $.param($scope.setting);
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
                            $("#table").bootstrapTable('refresh', {url: "{{route('setting.lists')}}"});
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