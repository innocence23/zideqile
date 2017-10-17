@extends('layouts.front')

@section('html_title', '个人主页')

@section('main-content')
<div class="main main-raised">
	<div class="profile-content">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3 class="title">{{ Auth::user()->name }}</h3>
				</div>
			</div>
			<div class="tab-content">
				<div class="tab-pane active work" id="work">
					<div class="row">
						<div class="col-md-7 col-md-offset-1">
							<div class="row collections">
								<div class="col-md-6">
									<div class="card card-background" style="background-image: url({{ Auth::user()->avatar ?: '/images/placeholder.jpg'}})">
										<a href="#pablo"></a>
										<div class="card-content">
											<label class="label label-primary">春</label>
											<a href="#pablo">
												<h2 class="card-title">春生</h2>
											</a>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card card-background" style="background-image: url({{ Auth::user()->avatar ?: '/images/placeholder.jpg'}})">
										<a href="#pablo"></a>
										<div class="card-content">
											<label class="label label-primary">夏</label>
											<a href="#pablo">
												<h2 class="card-title">夏长</h2>
											</a>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card card-background" style="background-image: url({{ Auth::user()->avatar ?: '/images/placeholder.jpg'}})">
										<a href="#pablo"></a>
										<div class="card-content">
											<label class="label label-primary">秋</label>
											<a href="#pablo">
												<h2 class="card-title">秋收</h2>
											</a>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card card-background" style="background-image: url({{ Auth::user()->avatar ?: '/images/placeholder.jpg'}})">
										<a href="#pablo"></a>
										<div class="card-content">
											<label class="label label-primary">冬</label>
											<a href="#pablo">
												<h2 class="card-title">冬藏</h2>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2 col-md-offset-1 stats">
							<h4 class="title">爱好</h4>
							<ul class="list-unstyled">
								<li>古诗词</li>
								<li>天文</li>
								<li>说文</li>
								<li>道家</li>
								<li>诸子</li>
							</ul>
							<hr>
							<h4 class="title">关于我</h4>
							<p class="description">弃我去者，昨日之日不可留；乱我心者，今日之日多烦忧。</p>
							<hr>
							<h4 class="title">联系我</h4>
							<p class="description"><a href="http://www.zzideqile.com">个人网站</a></p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-5 col-md-offset-1">
							<div class="card card-profile card-plain">
								<div class="col-md-5">
									<div class="card-image">
										<img class="img" src="{{ Auth::user()->avatar ?: '/images/placeholder.jpg'}}">
									</div>
								</div>
								<div class="col-md-7">
									<div class="card-content">
										<h4 class="card-title">测试个人中心</h4>
										<p class="card-description">
											爆竹声中一岁除，春风送暖入屠苏。
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5">
							<div class="card card-profile card-plain">
								<div class="col-md-5">
									<div class="card-image">
										<img class="img" src="{{ Auth::user()->avatar ?: '/images/placeholder.jpg'}}">
									</div>
								</div>
								<div class="col-md-7">
									<div class="card-content">
										<h4 class="card-title">测试个人中心1</h4>
										<p class="card-description">
											晴日暖风生麦气，绿阴幽草胜花时。
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection