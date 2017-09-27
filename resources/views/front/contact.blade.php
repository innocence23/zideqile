@extends('layouts.front')

@section('html_title', '联系我们')

@section('main-content')
	<div class="contact-page main main-raised">
		<div class="contact-content">
			<div class="container">
				<h2 class="title">邮件留言</h2>
				<div class="row">
					<div class="col-md-6">
						<p class="description">有什么疑问可以邮件留言，我会尽快处理和回复的。<br><br>
						</p>
						<form role="form" id="contact-form" method="post">
							<input type="hidden" name="_token" value="{{ csrf_token() }}">
							<div class="form-group label-floating">
								<label class="control-label">名字昵称</label>
								<input type="text" name="name" id="name" class="form-control">
							</div>
							<div class="form-group label-floating">
								<label class="control-label">Email</label>
								<input type="email" name="email" id="email" class="form-control"/>
							</div>
							<div class="form-group label-floating">
								<label class="control-label">电话</label>
								<input type="text" name="phone" id="phone" class="form-control"/>
							</div>
							<div class="form-group label-floating">
								<label class="control-label">内容主题</label>
								<textarea name="message" class="form-control" id="message" rows="6"></textarea>
							</div>
							<div class="submit text-center">
								<input type="button" class="btn btn-primary btn-raised btn-round" value="发送邮件" id="send" />
							</div>
						</form>
					</div>
					<div class="col-md-4 col-md-offset-2">
						<div class="info info-horizontal">
							<div class="icon icon-primary">
								<i class="material-icons">add</i>
							</div>
							<div class="description">
								<h4 class="info-title">找到我们</h4>
								<p>{{$position}}</p>
							</div>
						</div>
						<div class="info info-horizontal">
							<div class="icon icon-primary">
								<i class="material-icons">assignment</i>
							</div>
							<div class="description">
								<h4 class="info-title">{{$name}}</h4>
								<p>{{$desc}}</p>
								<p>联系人：{{$contact}}</p>
							</div>
						</div>
						<div class="info info-horizontal">
							<div class="icon icon-primary">
								<i class="material-icons">mail</i>
							</div>
							<div class="description">
								<h4 class="info-title">联系详情</h4>
								<p>TMQQ: {{$QQ}}</p>
								<p>Email:<a href="mailto:{{ str_replace('@', '#', $Email)}}" style="color: #999;">{{$Email}}</a> </p>
								<p>微信: {{$weixin}}</p>
								<p>微博: <a href="{{$weibo}}" target="_blank" style="color: #999;">@ {{$name}}</a> </p>
								<p>传真: {{$fax}}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	{{--百度地图--}}
	<div>
		<div id="contactUsMap" class="big-map" style="height: 450px; width: 100%;">此处放地图</div>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=95bce679a52e2f1b8ba5d868f2daaadc"></script>
		{{--<title>带文字标签的覆盖物</title>--}}
		<script type="text/javascript">
			// 百度地图API功能
			var map = new BMap.Map("contactUsMap");
			var point = new BMap.Point("{{$position_x}}", "{{$position_y}}");
			map.centerAndZoom(point, 15);
			var marker = new BMap.Marker(point);  // 创建标注
			map.addOverlay(marker);              // 将标注添加到地图中
			var sContent ="{{$position}}";
			var opts = {
				width : 200,     // 信息窗口宽度
				height: 70,     // 信息窗口高度
				title : "{{$name}}" // 信息窗口标题
			};
			var infoWindow = new BMap.InfoWindow(sContent, opts);  // 创建信息窗口对象
			map.openInfoWindow(infoWindow,point); //开启信息窗口
			marker.addEventListener("click", function(){
				map.openInfoWindow(infoWindow,point); //开启信息窗口
			});
			//var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
			//var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
			var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，
			//map.addControl(top_left_control);
			//map.addControl(top_left_navigation);
			map.addControl(top_right_navigation);
		</script>
	</div>
@endsection

@section('js')
	<script>
		$(function(){
		    $('#send').click(function(){
		        //验证邮箱
                var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                if(!myreg.test($('#email').val())) {
                    sweetAlert("Oops...", "请输入有效的E_mail", "error");
                    return false;
				}
				//手机验证
                if (!/^1\d{10}$/.test($('#phone').val())) {
                    sweetAlert("Oops...", "请输入有效的手机号", "error");
                    return false;
                }
                if ("" == $('#name').val()) {
                    sweetAlert("Oops...", "名称不能为空", "error");
                    return false;
                }
                if ("" == $('#message').val()) {
                    sweetAlert("Oops...", "邮件内容不能为空", "error");
                    return false;
                }
                $.post("/api/v1/send-email",
					$("#contact-form").serialize(),
                    function(data){
                        swal("Good job!", "邮件发送成功，我们会尽快联系你", "success")
                    }
				);
			});
		})
	</script>
@endsection