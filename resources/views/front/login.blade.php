@extends('layouts.front-simple')

@section('html_title', '登陆')

@section('main-content')
    <div style="margin-top: 70px;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                    <div class="card card-signup">
                        <form class="form" method="POST" action="{{ route('login') }}">
                            <div class="header header-primary text-center">
                                <h4 class="card-title">登陆</h4>
                                <div class="social-line">
                                    <!--<a class="btn btn-just-icon btn-simple" target="_blank" href="/login/weixinweb">
                                        <i class="fa fa-weixin"> </i>
                                    </a>
                                    <a class="btn btn-just-icon btn-simple" target="_blank" href="/login/weibo">
                                        <i class="fa fa-weibo"> </i>
                                    </a>
                                    <a class="btn btn-just-icon btn-simple" target="_blank" href="/login/qq">
                                        <i class="fa fa-qq"> </i>
                                    </a>-->
                                    <a class="btn btn-just-icon btn-simple" target="_blank" href="/login/google">
                                        <i class="fa fa-google"></i>
                                    </a>
                                    <a class="btn btn-just-icon btn-simple" target="_blank" href="/login/facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a class="btn btn-just-icon btn-simple" target="_blank" href="/login/github">
                                        <i class="fa fa-github"></i>
                                    </a>
                                </div>

                            </div>
                            <p class="description text-center">账号登陆</p>
                            <div class="card-content">
                                {{ csrf_field() }}
                                <div class="input-group {{ $errors->has('email') ? ' has-error' : '' }}">
                                <span class="input-group-addon">
                                    <i class="material-icons">email</i>
                                </span>
                                    <div class="form-group is-empty">
                                        <input id="email" type="email" class="form-control" placeholder="Email..." name="email" value="{{ old('email') }}" required autofocus>
                                        <span class="material-input"></span>
                                    </div>
                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                <div class="input-group {{ $errors->has('password') ? ' has-error' : '' }}">
                                <span class="input-group-addon">
                                    <i class="material-icons">lock_outline</i>
                                </span>
                                    <div class="form-group is-empty">
                                        <input id="password" type="password" class="form-control" name="password"  placeholder="Password..." required>
                                        <span class="material-input"></span>
                                    </div>
                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> 记住我
                                    </label>
                                </div>
                            </div>
                            <div class="footer text-center">
                                <button type="submit" class="btn btn-primary">登陆<div class="ripple-container"></div></button>
                            </div>
                            <div style="margin: 10px 15px;" >
                                <a href="{{ url('password/reset') }}"> 忘记密码</a>
                                <div style="float: right;" >
                                    还没有帐号？<a href="{{ url('signup') }}">立即注册</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection