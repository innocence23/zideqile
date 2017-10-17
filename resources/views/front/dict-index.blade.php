@extends('layouts.front')

@section('html_title')
    {{ $dict->title or "博客"}}
@endsection

@section('main-content')
    <div class="content">
        <div class="card card-nav-tabs">
            <div class="header header-primary">
                <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <ul class="nav nav-tabs" data-tabs="tabs">
                            <li class="active">
                                <a href="#profile" data-toggle="tab" aria-expanded="true">
                                    <i class="material-icons">local_florist</i>
                                    偏旁检索
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#messages" data-toggle="tab" aria-expanded="false">
                                    <i class="material-icons">local_library</i>
                                    拼音检索
                                </a>
                            </li>
                            <li class="">
                                <a href="#settings" data-toggle="tab" aria-expanded="false">
                                    <i class="material-icons">local_offer</i>
                                    TAG检索
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-content">
                <div class="tab-content text-center">
                    <div class="tab-pane active" id="profile">
                        <table class="table table-bordered">
                            <tbody>
                            @foreach( $pinyins as $k=>$pinyin)
                            <tr>
                                <td class="text-center">{{$k}}</td>
                                <td class="text-left">
                                @foreach( $pinyin as $val)
                                    <a href="{{route('dict-type', ['pinyin', $val])}}" target="_blank" >{{$val}}</a>
                                @endforeach
                                </td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="messages">
                        <table class="table table-bordered">
                                <tbody>
                                @foreach( $bushous as $k=>$bushou)
                                    <tr>
                                        <td class="text-center">{{$k}}</td>
                                        <td class="text-left">
                                            @foreach( $bushou as $val)
                                                <a href="{{route('dict-type', ['bushou', $val['id']])}}" target="_blank" >{{$val['name']}}</a>
                                            @endforeach
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                    </div>
                    <div class="tab-pane" id="settings">
                        <ul class="list-group">
                            @foreach( $tags as $key=>$tag)
                                <li class="list-group-item">
                                    <a href="{{route('dict-type', ['tag', $key])}}" target="_blank" >{{$tag}}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('css')
    <style rel="stylesheet">
        .nav.nav-tabs a {
            padding: 10px;
        }
        .table.table-bordered a {
            margin-right: 20px;
        }
        .card-nav-tabs {
            margin-top: 25px !important;
        }
    </style>
@endsection

@section('js')
    <script type="text/javascript">
    </script>
@endsection