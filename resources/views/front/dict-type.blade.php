@extends('layouts.front')

@section('html_title')
    {{ $dict->title or "博客"}}
@endsection

@section('main-content')
    <div class="main main-raised">
        <div class="container">
        <div class="table-responsive" style="margin-top: 20px">
            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th>简体</th>
                    <th>繁体</th>
                    <th>拼音</th>
                </tr>
                </thead>
                <tbody>
                @foreach($data as $dict)
                <tr>
                    <td><a target="_blank" href="{{route('dict', [$dict->slug])}}">{{$dict->jianti}}</a></td>
                    <td><a target="_blank" href="{{route('dict', [$dict->slug])}}">{{$dict->fanti}}</a></td>
                    <td>{{$dict->pinyin}}</td>
                </tr>
                @endforeach
                </tbody>
            </table>
        </div>
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