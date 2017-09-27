@extends('layouts.front')

@section('html_title', '博客列表')

@section('main-content')
	<div class="main main-raised">
		<div class="container">
			<div class="section" style="padding:50px 0 16px;">
				@if (isset($categories))
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="nav nav-pills nav-pills-primary">
								<li class="{{ \Request::is('blogs') ? 'active' : '' }}"><a href="{{ route('blogs') }}" >All</a></li>
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
							<div class="card card-profile">
								<a href="{{ route('blog', $v->slug)}}" title="{{ $v->desc }}">
									<div class="card-image">
										<img class="img" src="{{ '/uploads/'.$v->image }}">
										<div class="colored-shadow" style="background-image: url({{ '/uploads/'.$v->image }}); opacity: 1;">
										</div>
										<div class="ripple-container"></div>
									</div>
								</a>
								<div class="card-content">
									<h5 class="card-title">
										<a href="{{ route('blog', $v->slug)}}" title="{{ $v->desc }}">
											{{ $v->title }}
										</a>
									</h5>
									<h6 class="category text-black">
										<a href="#pablo"><b>{{ $v->user->name }}</b></a>
										<b> {{ \Carbon\Carbon::parse($v->created_at)->diffForHumans() }} </b>
										<a href="{{ route('blog.category', $v->category->name) }}"
										   class="label label-info">{{$v->category->name}}</a>
									</h6>

									<div class="footer">
										<p class="blog-tags">
											<i class="fa fa-tags"></i>
											@foreach($v->tags as $tag)
												<a href="{{ route('blog.tag', $tag->name) }}" class="label label-success">{{$tag->name}}</a>
											@endforeach
										</p>
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