@extends('adminlte::page')

@section('title', '导航菜单管理')

@section('content_header')
    <h1>导航菜单管理</h1>
    <ol class="breadcrumb">
        <li class="active">导航菜单管理</li>
    </ol>
@stop

@section('content')
    <div ng-app="myModule" ng-controller="myController">
        <div class="container-fluid spark-screen">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        导航菜单管理
                        <button type="button" class="btn btn-info" style="margin: -6px;float: right;" ng-click="toggle('add')">
                            <i class="glyphicon glyphicon-plus"></i> 新建
                        </button>
                    </div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="alert alert-info">小提示tip：只有最底层的菜单 <kbd>url</kbd> 才有意义！两级有意义，其他忽略。</div>
                                <div class="radio i-checks" >
                                    <div class="btn-group" role="group" aria-label="...">
                                        <button type="button" class="btn btn-default" ng-click="my_tree.collapse_all()">全部收起</button>
                                        <button type="button" class="btn btn-default" ng-click="my_tree.expand_all()">全部展开</button>
                                    </div>
                                </div>
                                <!-- Template Global using in two filter below-->
                                <script type="text/ng-template" id="tree-dnd-template-render.html">
                                    <table ng-class="$tree_class">
                                        <thead>
                                        <tr>
                                            <th ng-class="expandingProperty.titleClass" ng-style="expandingProperty.titleStyle"
                                                compile="expandingProperty.titleTemplate">
                                                @{{expandingProperty.displayName || expandingProperty.field || expandingProperty}}
                                            </th>
                                            <th ng-repeat="col in colDefinitions" ng-class="col.titleClass" ng-style="col.titleStyle"
                                                compile="col.titleTemplate">
                                                @{{col.displayName || col.field}}
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody tree-dnd-nodes>
                                        <tr tree-dnd-node="node" ng-repeat="node in tree_nodes track by node.__hashKey__ "
                                            ng-show="enabledFilter ? node.__filtered_visible__ === true && node.__visible__ : node.__visible__"
                                            ng-class="enabledFilter ? (node.__filtered__ === true? 'success': '') : (node.__selected__ ? ' active':'')"
                                            ng-click="onSelect(node)">
                                            <td tree-dnd-node-handle
                                                ng-style="expandingProperty.cellStyle ? expandingProperty.cellStyle : {'padding-left': $callbacks.calsIndent(node.__level__)}"
                                                ng-class="expandingProperty.cellClass" compile="expandingProperty.cellTemplate">
                                                <a data-nodrag> <i ng-class="node.__icon_class__"
                                                                   ng-click="toggleExpand(node)"
                                                                   class="tree-icon"></i>
                                                </a> @{{node[expandingProperty.field] || node[expandingProperty]}}
                                            </td>
                                            <td ng-repeat="col in colDefinitions" ng-class="col.cellClass" ng-style="col.cellStyle"
                                                compile="col.cellTemplate">
                                                @{{node[col.field]}}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </script>
                                <div class="form-group form-inline clearfix ">
                                    <label>名称: <input class="form-control" ng-model="_filter.name"></label>
                                    <label>全局: <input class="form-control" ng-model="_filter._$"></label>
                                </div>
                                <tree-dnd tree-class="table table-bordered table-hover table-striped"
                                          tree-data="tree_data"
                                          tree-control="my_tree"
                                          filter="_filter"
                                          callbacks="callbacks"
                                          primary-key="id"
                                          column-defs="col_defs"
                                          expand-on="expanding_property"
                                          template-url="tree-dnd-template-render.html"
                                          indent="30"
                                          indent-plus="20"
                                          indent-unit="px"
                                          {{--enable-hotkey="true" 加上这个默认就是复制了 shift才算移动--}}
                                          enable-drag="true"
                                          enable-drop="true"
                                          enable-status="true"
                                          enable-move="true">
                                </tree-dnd>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade bs-example-modal-lg" id="myModal" aria-labelledby="exampleModalLabel" data-backdrop="static">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="exampleModalLabel">@{{ form_title }}</h4>
                    </div>
                    <div class="modal-body">
                        <form name="myForm" id="form1" novalidate>
                            <div class="form-group" ng-class="{ 'has-error' : !myForm.name.$pristine && myForm.name.$invalid }">
                                <label for="menu-name" class="control-label">名称:</label>
                                <input type="text" class="form-control" name="name" id="menu-name" ng-maxlength="8" required ng-model="menu.name">
                                <p ng-show="!myForm.name.$pristine && myForm.name.$invalid" class="help-block">
                                    <span ng-show="myForm.name.$error.required" class="help-block">不能为空</span>
                                    <span ng-show="myForm.name.$error.maxlength" class="help-block">不能超过8个字符</span>
                                </p>
                            </div>
                            <div class="form-group" ng-class="{ 'has-error' : !myForm.icon.$pristine && myForm.icon.$invalid }">
                                <label for="menu-icon" class="control-label">material-icons图标:</label>
                                <input type="text" class="form-control" name="icon" id="menu-icon" required ng-model="menu.icon" placeholder="icon">
                                <p ng-show="!myForm.icon.$pristine && myForm.icon.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group" ng-class="{ 'has-error' : !myForm.url.$pristine && myForm.url.$invalid }">
                                <label for="menu-url" class="control-label">URL路径:</label>
                                <input type="text" class="form-control" name="url" id="menu-url" required ng-model="menu.url" placeholder="url">
                                <p ng-show="!myForm.url.$pristine && myForm.url.$invalid" class="help-block">不能为空</p>
                            </div>
                            <div class="form-group" ng-class="{ 'has-error' : !myForm.weight.$pristine && myForm.weight.$invalid }">
                                <label for="menu-weight" class="control-label">权重:</label>
                                <input type="number" class="form-control" name="weight" id="menu-weight" min="0" max="9999"
                                       required ng-model="menu.weight">
                                <p ng-show="!myForm.weight.$pristine && myForm.weight.$invalid" class="help-block">
                                    <span ng-show="myForm.weight.$error.required" class="help-block">不能为空</span>
                                    <span ng-show="myForm.weight.$error.min || myForm.weight.$error.max" class="help-block">0-9999之间</span>
                                </p>
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
    <link rel="stylesheet" href="{{asset('/plugins/angular-tree-dnd-master/dist/ng-tree-dnd.css')}}">
@stop

@section('js')
    <script src="{{asset('/plugins/angular-tree-dnd-master/dist/ng-tree-dnd.js')}}" type="text/javascript"></script>
    <script>
        angular.module('myModule', ['ntt.TreeDnD'])
            .controller('myController', function ($scope, $http, $TreeDnDConvert, $timeout) {
                var tree = {};
                $scope._filter = {};
                $scope.tree_data = {};
                $scope.my_tree = tree = {};
                $scope.expanding_property = {
                    field:       'name',
                    titleClass:  'text-center',
                    cellClass:   'v-middle',
                    displayName: '名称'
                };
                $scope.col_defs = [
                    {
                        field:       'url',
                        displayName: 'url路径',
                        titleClass:  'text-center'
                    },
                    {
                        field:       'icon',
                        displayName: 'Icon',
                        titleClass:  'text-center'
                    },
                    {
                        field:       'status',
                        displayName: '状态',
                        titleClass:  'text-center',
                        cellTemplate:'<span ng-if="node.status == 0" class="label label-danger">禁用</span>' +
                        '<span ng-if="node.status == 1" class="label label-success">启用</span>'
                    },
                    {
                        titleClass:  'text-center',
                        cellClass:   'v-middle text-center',
                        displayName: '操作',
                        cellTemplate:
                        '  <button ng-click="disableditem(node)" ng-if="node.status == 1" class="btn btn-default btn-sm">禁用</button>'+
                        '  <button ng-click="disableditem(node)" ng-if="node.status == 0" class="btn btn-default btn-sm">启用</button>' +
                        '  <button ng-click="toggle(\'edit\', node)" class="btn btn-default btn-sm">编辑</button>' +
                        '  <button ng-click="toggle(\'add\', node)" class="btn btn-default btn-sm" >新建</button>'
                    }
                ];

                // DataDemo.getDatas() can see in 'Custom Option' -> Tab 'Data Demo'
                Datas = [
                    {
                        'DemographicId': 1,
                        'ParentId':      null,
                        'Name':          'United States of America',
                        'Description':   'United States of America',
                        'Area':          9826675,
                        'Population':    318212000,
                        'TimeZone':      'UTC -5 to -10'
                    }, {
                        'DemographicId': 2,
                        'ParentId':      1,
                        'Name':          'California',
                        'Description':   'The Tech State',
                        'Area':          423970,
                        'Population':    38340000,
                        'TimeZone':      'Pacific Time'
                    }, {
                        'DemographicId': 3,
                        'ParentId':      2,
                        'Name':          'San Francisco',
                        'Description':   'The happening city',
                        'Area':          231,
                        'Population':    837442,
                        'TimeZone':      'PST'
                    }, {
                        'DemographicId': 4,
                        'ParentId':      2,
                        'Name':          'Los Angeles',
                        'Description':   'Disco city',
                        'Area':          503,
                        'Population':    3904657,
                        'TimeZone':      'PST'
                    }, {
                        'DemographicId': 5,
                        'ParentId':      1,
                        'Name':          'Illinois',
                        'Description':   'Not so cool',
                        'Area':          57914,
                        'Population':    12882135,
                        'TimeZone':      'Central Time Zone'
                    }, {
                        'DemographicId': 6,
                        'ParentId':      5,
                        'Name':          'Chicago',
                        'Description':   'Financial City',
                        'Area':          234,
                        'Population':    2695598,
                        'TimeZone':      'CST'
                    }, {
                        'DemographicId': 7,
                        'ParentId':      1,
                        'Name':          'Texas',
                        'Description':   'Rances, Oil & Gas',
                        'Area':          268581,
                        'Population':    26448193,
                        'TimeZone':      'Mountain'
                    }, {
                        'DemographicId': 8,
                        'ParentId':      1,
                        'Name':          'New York',
                        'Description':   'The largest diverse city',
                        'Area':          141300,
                        'Population':    19651127,
                        'TimeZone':      'Eastern Time Zone'
                    }, {
                        'DemographicId': 14,
                        'ParentId':      8,
                        'Name':          'Manhattan',
                        'Description':   'Time Square is the place',
                        'Area':          269.403,
                        'Population':    0,
                        'TimeZone':      'EST'
                    }, {
                        'DemographicId': 15,
                        'ParentId':      14,
                        'Name':          'Manhattan City',
                        'Description':   'Manhattan island',
                        'Area':          33.77,
                        'Population':    0,
                        'TimeZone':      'EST'
                    }, {
                        'DemographicId': 16,
                        'ParentId':      14,
                        'Name':          'Time Square',
                        'Description':   'Time Square for new year',
                        'Area':          269.40,
                        'Population':    0,
                        'TimeZone':      'EST'
                    }, {
                        'DemographicId': 17,
                        'ParentId':      8,
                        'Name':          'Niagra water fall',
                        'Description':   'Close to Canada',
                        'Area':          65.7,
                        'Population':    0,
                        'TimeZone':      'EST'
                    }, {
                        'DemographicId': 18,
                        'ParentId':      8,
                        'Name':          'Long Island',
                        'Description':   'Harbour to Atlantic',
                        'Area':          362.9,
                        'Population':    0,
                        'TimeZone':      'EST'
                    }, {
                        'DemographicId': 51,
                        'ParentId':      1,
                        'Name':          'All_Other',
                        'Description':   'All_Other demographics',
                        'Area':          0,
                        'Population':    0,
                        'TimeZone':      0
                    }, {
                        'DemographicId': 201,
                        'ParentId':      null,
                        'Name':          'India',
                        'Description':   'Hydrabad tech city',
                        'Area':          9826675,
                        'Population':    318212000,
                        'TimeZone':      'IST'
                    }, {
                        'DemographicId': 301,
                        'ParentId':      null,
                        'Name':          'Bangladesh',
                        'Description':   'Country of love',
                        'Area':          9826675,
                        'Population':    318212000,
                        'TimeZone':      'BST'
                    }];
                //$scope.tree_data = $TreeDnDConvert.line2tree(Datas, 'DemographicId', 'ParentId');

                $scope.callbacks = {
                    dropped: function (info, pass) {
                        if(confirm("确定要移动数据吗？")) {
                            if (!info) {
                                return null;
                            }
                            var _node         = info.node,
                                _nodeAdd      = null,
                                _move         = info.move,
                                _parent       = null,
                                _parentRemove = info.parent || info.drag.treeData,
                                _parentAdd    = _move.parent || info.target.treeData,
                                isMove        = info.drag.enabledMove;
                            if (!info.changed && isMove) {
                                return false;
                            }
                            if (info.target.$callbacks.accept(info, info.move, info.changed)) {
                                if (isMove) {
                                    _parent = _parentRemove;
                                    if (angular.isDefined(_parent.__children__)) {
                                        _parent = _parent.__children__;
                                    }
                                    _nodeAdd = info.drag.$callbacks.remove(
                                        _node,
                                        _parent,
                                        info.drag.$callbacks,
                                        true // delay reload
                                    );
                                } else {
                                    _nodeAdd = info.drag.$callbacks.clone(_node, info.drag.$callbacks);
                                }
                                if (isMove &&
                                    info.drag === info.target &&
                                    _parentRemove === _parentAdd &&
                                    _move.pos >= info.node.__index__) {
                                    _move.pos--;
                                }
                                _parent = _parentAdd;
                                if (_parent.__children__) {
                                    _parent = _parent.__children__;
                                }
                                info.target.$callbacks.add(
                                    _nodeAdd,
                                    _move.pos,
                                    _parent,
                                    info.drag.$callbacks
                                );

                                var targetPid = '0'; //默认顶级
                                if ( info.move.parent !== null ) {
                                    targetPid = info.move.parent.id;
                                }
                                var node_id = _nodeAdd.id;

                                var ids = '';
                                for ( var i in _parent) {
                                    ids += _parent[i]['id'] + ','
                                }

                                $http({
                                    url: "{{route('menu.order')}}" ,
                                    method: 'POST',
                                    data: {
                                        ids: ids,
                                        node_id: node_id,
                                        targetPid: targetPid
                                    }
                                }).success(function(data){
                                    refresh();
                                    alert("移动成功");
                                    return false;
                                }).error(function(){
                                    alert("移动后端数据保存失败");
                                    return false;
                                });
                                return true;
                            }
                        }
                        else {
                            return false;
                        }
                    }
                };

                refresh();
                function refresh() {
                    $http.get("/admin/menu/lists")
                        .success(function (response) {
                            $scope.tree_data = $TreeDnDConvert.line2tree(response, 'id', 'pid');
                        });
                }

                //禁用按钮事件
                $scope.disableditem = function (info) {
                    var id = info['id'];
                    var status = info['status'];
                    swal({
                        title: "确定此操作吗？",
                        text: "",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    }).then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: '/admin/menu/' + id,
                                type: 'POST',
                                data: {
                                    status: status,
                                    _token: '{{ csrf_token() }}'
                                },
                                dataType: 'json',
                                success: function (data, textStatus, jqXHR) {
                                    swal("成功!", "", "success", {timer: 800});
                                    refresh();
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
                $scope.toggle = function (modalstate, info) {
                    //避免下次第二次add时候直接输入框是红色警告的
                    $scope.myForm.$setPristine();
                    $scope.modalstate = modalstate;
                    switch (modalstate) {
                        case 'add':
                            $scope.form_title = "新建";
                            $scope.menu = {};
                            if (info)
                                $scope.menu.pid = info['id'];
                            break;
                        case 'edit':
                            $scope.form_title = "修改--" + info['id'];
                            $scope.id = info['id'];
                            $scope.menu = {
                                pid: info['pid'],
                                url: info['url'],
                                name: info['name'],
                                icon: info['icon'],
                                weight: info['weight']
                            };
                            break;
                        default:
                            break;
                    }
                    $('#myModal').modal('show');
                };

                //添加和修改保存记录
                $scope.save = function (modalstate, id) {
                    var url = "{{route('menu.store')}}";
                    var dataparam = $.param($scope.menu);
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
                        refresh();
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