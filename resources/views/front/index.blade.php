@extends('layouts.front')

@section('html_title', '首页')

@section('main-content')
    <div class="cd-section" id="headers">
        <!-- Carousel Card -->
        <div class="card card-raised card-carousel">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <div class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        @foreach($carousels as $k=>$v)
                            <li data-target="#carousel-example-generic"
                                data-slide-to="{{$k}}" class=" {{ $k==0 ? 'active' : '' }}"></li>
                        @endforeach
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        @foreach($carousels as $k=>$carousel)
                            <div class="item {{ $k==0 ? 'active' : '' }}">
                                <img src="uploads/{{ $carousel->image }}" alt="Awesome Image">
                                <div class="carousel-caption">
                                    <h4><i class="material-icons">location_on</i>{{ $carousel->desc }}</h4>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <i class="material-icons">keyboard_arrow_left</i>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <i class="material-icons">keyboard_arrow_right</i>
                    </a>
                </div>
            </div>
        </div>
        <!-- End Carousel Card -->
    </div>

    <div class="cd-section" id="features">
        <div class="container">
            <div class="features-1">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h2 class="title">为什么要选择中华文化</h2>
                        <h5 class="description">人法地，地法天，天法道，道法自然。三才者，天地人；三光者，日月星。儒释道三家犹如三才离不开三光。儒释道之三家，相辅相成，相得益彰。</h5>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-info">
                                <i class="material-icons">chat</i>
                            </div>
                            <h4 class="info-title">以儒治世</h4>
                            <p>讲究持重、勤谨、正气、担当以及自省、中庸的为人处世之道，体现了中正做事的学问。</p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-success">
                                <i class="material-icons">verified_user</i>
                            </div>
                            <h4 class="info-title">以道治身</h4>
                            <p>追求自然无为、返璞归真，涤除玄鉴，潇洒旷达，体现了机敏做人的学问。</p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="info">
                            <div class="icon icon-danger">
                                <i class="material-icons">fingerprint</i>
                            </div>
                            <h4 class="info-title">以佛治心</h4>
                            <p>主张四大皆空，慈悲宽大、包容忍让，视世间万难为无物，不怨天尤人，从自然，呈本性，体现了超脱修心的学问。</p>
                        </div>
                    </div>
                </div>

            </div>
            <div class="features-3">
                <div class="row">
                    <div class="col-md-6">
                        <div class="phone-container">
                            <img src="/images/center.jpg"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <br/><br/>
                        <h2 class="title">大道至简</h2>
                        <div class="info info-horizontal">
                            <div class="icon icon-primary">
                                <i class="material-icons">extension</i>
                            </div>
                            <div class="description">
                                <h4 class="info-title">上士闻道 勤而行之</h4>
                                <p>上士领悟道的奥妙，勤逸实践，观察道的运行。 </p>
                            </div>
                        </div>

                        <div class="info info-horizontal">
                            <div class="icon icon-primary">
                                <i class="material-icons">child_friendly</i>
                            </div>
                            <div class="description">
                                <h4 class="info-title">中士闻道 若存若亡</h4>
                                <p>中士领悟道运行后的表象，总觉得道变幻莫测。</p>
                            </div>
                        </div>

                        <div class="info info-horizontal">
                            <div class="icon icon-primary">
                                <i class="material-icons">watch_later</i>
                            </div>
                            <div class="description">
                                <h4 class="info-title">下士闻道 大笑之</h4>
                                <p>下士领悟道的纯朴，虽不甚明白，却有闻道后的喜悦，不笑，说明连道的影子都没摸着，不足以为道。</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cd-section" id="projects">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <h2 class="title">古诗文欣赏</h2>
                    <h5 class="description">夫天地者，万物之逆旅也；光阴者，百代之过客也。而浮生若梦，为欢几何？</h5>
                    <h4 class="description">人生天地间 忽如远行客</h4>
                    <div class="section-space"></div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="card card-plain">
                        <div class="card-image">
                            <img src="/images/cihua1.jpg"/>
                        </div>
                        <div class="content">
                            <h4 class="card-title">山有扶苏，隰有荷华。</h4>
                            <h6 class="category text-primary">国风</h6>
                            <p class="card-description">
                                山有扶苏，隰有荷华。不见子都，乃见狂且。<br/>
                                山有乔松，隰有游龙，不见子充，乃见狡童。
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-plain">
                        <div class="card-image">
                            <img src="/images/cihua2.jpg"/>
                        </div>
                        <div class="content">
                            <h4 class="card-title">山有木兮木有枝，心悦君兮君不知。</h4>
                            <h6 class="category text-success">越人歌</h6>
                            <p class="card-description">
                                我见青山多妩媚，料青山见我应如是。<br/>
                                不入园林，怎知春色如许？
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-plain">
                        <div class="card-image">
                            <img src="/images/cihua3.jpg"/>
                        </div>
                        <div class="content">
                            <h4 class="card-title">桃李春风一杯酒，江湖夜雨十年灯。</h4>
                            <h6 class="category text-info">黄庭坚</h6>
                            <p class="card-description">
                                我居北海君南海，寄雁传书谢不能。<br/>
                                桃李春风一杯酒，江湖夜雨十年灯。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cd-section" id="testimonials">
        <div class="testimonials-1 section-image" style="background-image: url('uploads/{{ $carousels[0]->image}}')">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center">
                        <h2 class="title">随便聊聊</h2>
                        <h5 class="description">天地无全功，圣人无全能，万物无全用.</h5>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="card card-testimonial">
                            <div class="icon">
                                <i class="material-icons">format_quote</i>
                            </div>
                            <div class="content">
                                <h5 class="card-description">
                                    积善之家，必有余庆；积不善之家，必有余殃。
                                </h5>
                            </div>

                            <div class="footer">
                                <h4 class="card-title">易经</h4>
                                <h6 class="category">@儒</h6>
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="{{ asset('/images/placeholder.jpg') }}"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card card-testimonial">
                            <div class="icon">
                                <i class="material-icons">format_quote</i>
                            </div>
                            <div class="content">
                                <h5 class="card-description">
                                    道生一，一生二，二生三，三生万物。万物负阴而抱阳，充气以为和。
                                </h5>
                            </div>

                            <div class="footer">
                                <h4 class="card-title">老子</h4>
                                <h6 class="category">@道</h6>
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="{{ asset('/images/placeholder.jpg') }}"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card card-testimonial">
                            <div class="icon">
                                <i class="material-icons">format_quote</i>
                            </div>
                            <div class="content">
                                <h5 class="card-description">
                                    舍利子！色不异空，空不异色；色即是空，空即是色。受想行识，亦复如是。
                                </h5>
                            </div>

                            <div class="footer">
                                <h4 class="card-title">心经</h4>
                                <h6 class="category">@释</h6>
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="{{ asset('/images/placeholder.jpg') }}"/>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="subscribe-line subscribe-line-image" data-parallax="true" style="background-color: #868686">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="text-center">
                        <h3 class="title">联系我们</h3>
                        <p class="description">
                            留下你的邮箱和需求，我们会尽快联系你的.
                        </p>
                    </div>

                    <div class="card card-raised card-form-horizontal">
                        <div class="card-content">
                            <form role="form" id="contact-form" method="post">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="input-group">
											<span class="input-group-addon">
                                                <i class="material-icons">color_lens</i>
											</span>
                                            <div class="form-group is-empty">
                                                <input type="text" value="" name="subject" placeholder="主题" class="form-control" id="subject">
                                                <span class="material-input"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">mail</i>
											</span>
                                            <div class="form-group is-empty">
                                                <input type="email" value="" id="email" name="email" placeholder="邮箱" class="form-control">
                                                <span class="material-input"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <button type="button" class="btn btn-rose btn-block" id="send">联系我们</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('css')
    <style>
        .navbar {
            margin-bottom: 0 !important;
        }
        #carousel-example-generic img {
            height: 500px !important;
        }
    </style>
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
                if ("" == $('#subject').val()) {
                    sweetAlert("Oops...", "主题不能为空", "error");
                    return false;
                }

                $.post("/api/v1/send-email",
                    $("#contact-form").serialize(),
                    function(data){
                        swal("Good job!", "邮件发送成功，我们会尽快联系你", "success");
                        $('#subject').val('');
                        $('#email').val('');
                    }
                );
            });
        })
    </script>
@endsection
