@extends('layouts.front')

@section('html_title', '商务合作')

@section('main-content')
	<div class="main main-raised">
		<div class="container">
			{!! $cooperation !!}

			<?php // 数组变成变量 共下面使用
			extract($setting); ?>

			<p>官方-QQ: {{$QQ}}</p>
			<p>联系邮箱: <a href="mailto:{{ str_replace('@', '#', $Email)}}" style="color: #3C4858;">{{$Email}}</a></p>
			<p>官方微信: {{$weixin}}</p>
			<p>官方微博: <a href="{{$weibo}}" target="_blank" style="color: #3C4858;">@ {{$name}}</a> </p>
			<p>公司地址: {{$position}}</p>
			<p>帮助中心: <a href="{{route('help')}}" target="_blank" style="color: #3C4858;">查阅帮助&&反馈问题</a></p>
		</div>
	</div>
@endsection

@section('js')
@endsection