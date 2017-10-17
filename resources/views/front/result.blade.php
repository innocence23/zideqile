@extends('layouts.front')

@section('html_title')
    搜索结果页
@endsection

@section('main-content')
    <div class="main main-raised">
        <div class="container">
            @if($result)
                <div class="table-responsive" style="margin-top: 20px">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>类别</th>
                            <th>标题</th>
                            <th>创建时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($result as $val)
                            <tr>
                                <td><span class="label label-success">{{$val['type']}}</span></td>
                                <td><a target="_blank" href="{{$val['link']}}">{!! $val['title'] !!}</a></td>
                                <td>{{$val['created_at']}}
                        @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <div style="margin: 20px 0">
                    <span>没用相关结果</span>
                </div>
            @endif

        </div>
    </div>
@endsection

@section('css')
    <style rel="stylesheet">
    </style>
@endsection

@section('js')
    <script type="text/javascript">
    </script>
@endsection