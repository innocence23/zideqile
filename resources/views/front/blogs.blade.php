@extends('layouts.front')

@section('html_title', '博客列表')

@section('main-content')
<div class="main main-raised">
	<div class="container">
		<div class="section" style="padding:50px 0 16px;">
			@if (isset($categories))
				<div class="row">
					<div class="col-md-12 text-center">
						{{--<ul class="nav nav-pills nav-pills-primary">--}}
						<ul class="nav nav-pills nav-pills-icons" >
							<li class="{{ \Request::is('blogs') ? 'active' : '' }}">
								<a href="{{ route('blogs') }}" >全部</a></li>
							@foreach( $categories as $category)
								<li class="{{ \Request::is('blog/category/'.$category.'/*') ? 'active' : '' }}">
									<a href="{{ route('blog.category',['category'=>$category, 'flag'=>'flag' ]) }}">{{$category}}</a>
								</li>
							@endforeach
						</ul>
						<div style="height: 20px;"></div>
					</div>
				</div>
			@endif
			<div class="row">
				@foreach($blogs as $k=>$v)
					<div class="col-sm-3">
						<div class="card card-blog">
							<div class="card-image">
								<a href="{{ route('blog', $v->slug)}}" title="{{ $v->desc }}">
									<img class="img" src="{{ '/uploads/'.$v->image }}">
								</a>
								<div class="colored-shadow" style="background-image: url({{ '/uploads/'.$v->image }}); opacity: 1;">
								</div>
								<div class="ripple-container"></div>
							</div>
							<div class="card-content">
								<h5 class="category text-success" style="text-align: center;">
									<a href="{{route('blog.category', $v->category->name)}}">{{$v->category->name}}</a>
								</h5>
								<h4 class="card-title">
									<a href="{{ route('blog', $v->slug)}}" title="{{ $v->desc }}">{{ $v->name }}</a>
								</h4>
								<div class="footer">
									<h6 class="author">
										<a href="#pablo">
											{{--<img src="/images/placeholder.jpg" class="avatar img-raised">--}}
											<span>{{ $v->user->name }}  </span>
											<i class="material-icons author">schedule</i>
											{{ \Carbon\Carbon::parse($v->created_at)->diffForHumans() }}
										</a>
									</h6>
									<div class="stats" style="float: left">
										<i class="material-icons">bookmark_border</i>
										@foreach($v->tags as $tag)
											<a href="{{ route('blog.tag', $tag->name) }}" class="btn btn-xs">
												{{$tag->name}}</a>
										@endforeach
									</div>
								</div>
							</div>
						</div>
					</div>
					{{--处理四个一组--}}
					@if($k && ($k+1)%4 == 0)
					</div>
					<div class="row">
					@endif
				@endforeach
			</div>
			{!! $blogs->links() !!}
		</div>
	</div>
</div>
@endsection