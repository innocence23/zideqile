@extends('layouts.front')

@section('html_title', '关于我们')

@section('main-content')
	<div class="main main-raised">
		<div class="container">

			{!! $aboutus !!}

			<div class="about-contact" name="">
				<a name="join-us"></a>
				<div class="row">
					<div class="col-md-12">
						<h2 class="text-center title">加入我们</h2>
						<h4 class="text-center description">　信言不美，美言不信；知者不博，博者不知；善者不多，多者不善。</h4>
						<form role="form" id="contact-form" method="post">
							<input type="hidden" name="_token" value="{{ csrf_token() }}">
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label">真实姓名</label>
										<input type="text" value="" class="form-control" placeholder="真实姓名" name="name" id="name" >
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label">邮箱</label>
										<input type="email" value="" class="form-control" placeholder="邮箱" name="email" id="email" >
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label">手机号</label>
										<input type="text" value="" class="form-control" placeholder="手机号" name="phone" id="phone" >
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="control-label">爱好</label>
										<input type="text" value="" class="form-control" placeholder="爱好" name="message" id="message">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4 col-md-offset-4 text-center">
									<input type="button" class="btn btn-primary btn-raised btn-round" value="确认发送" id="send" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
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
                    sweetAlert("Oops...", "爱好不能为空", "error");
                    return false;
                }

                $.post("/api/v1/send-email",
                    $("#contact-form").serialize(),
                    function(data){
                        swal("Good job!", "邮件发送成功，我们会尽快联系你", "success");
                        $('#message').val("");
                        $('#phone').val("");
                        $('#name').val("");
                        $('#email').val("");
                    }
                );
            });
        })
	</script>
@endsection