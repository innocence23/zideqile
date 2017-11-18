<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>APP | 自得其乐</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ mix('/css/app.css') }}" />
    <link rel="stylesheet" href="{{ asset('/plugins/fullPage/css/jquery.fullPage.css') }}" />
    <link rel="stylesheet" href="{{ asset('/plugins/vertical-nav.css') }}" />
    <style>
        .section.table {
            padding: 0 !important;
        }
        .features-4 .phone-container {
            margin: 15px auto 0 !important;
        }
        .features-4 .info:first-child {
            padding-top: 60px;
        }
        @media screen and (max-width: 800px) {
            h3, h4, h5, h6, p, a {
                font-size: 1.6em !important;
                font-weight: 500 !important;
            }
        }
    </style>
    <script src="{{ asset('/plugins/fullPage/js/jquery-1.8.3.min.js') }}"></script>
    <script src="{{ asset('/plugins/fullPage/js/jquery-ui-1.10.3.min.js') }}"></script>
    <script src="{{ asset('/plugins/fullPage/js/jquery.fullPage.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $.fn.fullpage({
                //slidesColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', '#f90'],
                //anchors: ['page1', 'page2', 'page3', 'page4'],
                navigation: true
            });
        });
    </script>
</head>

<body style="background-color: transparent;">

<div class="section features-4">

    <div class="row">
        <div class="col-md-6">
            <div class="phone-container" style="max-width: 240px">
                <img src="/images/iphone.png" />
            </div>
        </div>

        <div class="col-md-6">

            <div class="col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-sm-10 col-sm-offset-1">
                <br /><br />
                <h2 class="title">我们会变得更好</h2>

                <div class="info info-horizontal">
                    <div class="icon icon-primary">
                        <i class="material-icons">extension</i>
                    </div>
                    <div class="description">
                        <h4 class="info-title">丰富的内容</h4>
                    </div>
                </div>

                <div class="info info-horizontal">
                    <div class="icon icon-primary">
                        <i class="material-icons">child_friendly</i>
                    </div>
                    <div class="description">
                        <h4 class="info-title">有好的交互</h4>
                        <p>人性化的交互和设计</p>
                    </div>
                </div>

                <div class="info info-horizontal">
                    <div class="icon icon-primary">
                        <i class="material-icons">watch_later</i>
                    </div>
                    <div class="description">
                        <h4 class="info-title">快速上手</h4>
                    </div>
                </div>

                <div class="info info-horizontal">
                    <div class="icon icon-primary">
                        <i class="material-icons">vertical_align_bottom</i>
                    </div>
                    <div class="description">
                        <h4 class="info-title">下载APP</h4>
                        <p><a href="/images/zideqile.apk">Android下载</a></p>
                        <p><a href="/images/zideqile.iso">IOS下载</a></p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{--<div class="section features-4">--}}
    {{--<div class="row">--}}
        {{--<div class="col-md-8 col-md-offset-2 text-center">--}}
            {{--<h2 class="title">Your life will be much easier</h2>--}}
            {{--<h5 class="description">This is the paragraph where you can write more details about your product. Keep you user engaged by providing meaningful information.</h5>--}}
        {{--</div>--}}
    {{--</div>--}}
    {{--<div class="row">--}}

        {{--<div class="col-md-3 col-md-offset-1 col-lg-offset-1 col-sm-offset-1">--}}
            {{--<div class="info info-horizontal">--}}
                {{--<div class="icon icon-info">--}}
                    {{--<i class="material-icons">code</i>--}}
                {{--</div>--}}
                {{--<div class="description">--}}
                    {{--<h4 class="info-title">For Developers</h4>--}}
                    {{--<p>The moment you use Material Kit, you know you’ve never felt anything like it. With a single use, this powerfull UI Kit lets you do more than ever before. </p>--}}
                {{--</div>--}}
            {{--</div>--}}

            {{--<div class="info info-horizontal">--}}
                {{--<div class="icon icon-danger">--}}
                    {{--<i class="material-icons">format_paint</i>--}}
                {{--</div>--}}
                {{--<div class="description">--}}
                    {{--<h4 class="info-title">For Designers</h4>--}}
                    {{--<p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}

        {{--<div class="col-md-4">--}}
            {{--<div class="phone-container" style="max-width: 190px">--}}
                {{--<img src="/images/iphone.png" />--}}
            {{--</div>--}}
        {{--</div>--}}

        {{--<div class="col-md-3 col-md-offset-1 col-lg-offset-1 col-sm-offset-1">--}}
            {{--<div class="info info-horizontal">--}}
                {{--<div class="icon icon-primary">--}}
                    {{--<i class="material-icons">dashboard</i>--}}
                {{--</div>--}}
                {{--<div class="description">--}}
                    {{--<h4 class="info-title">Bootstrap Grid</h4>--}}
                    {{--<p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>--}}
                {{--</div>--}}
            {{--</div>--}}

            {{--<div class="info info-horizontal">--}}
                {{--<div class="icon icon-success">--}}
                    {{--<i class="material-icons">view_carousel</i>--}}
                {{--</div>--}}
                {{--<div class="description">--}}
                    {{--<h4 class="info-title">Example Pages Included</h4>--}}
                    {{--<p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
{{--</div>--}}

<div class="section">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 text-center">
            <h2 class="title">Why our product is the best</h2>
            <h5 class="description">This is the paragraph where you can write more details about your product. Keep you user engaged by providing meaningful information.</h5>
        </div>
    </div>

    <div class="col-md-10 col-md-offset-1">
        <div class="row">
            <div class="col-md-4">
                <div class="info info-horizontal">
                    <div class="icon icon-info">
                        <i class="material-icons">group_work</i>
                    </div>
                    <div class="description">
                        <h4 class="info-title">Collaborate</h4>
                        <p>The moment you use Material Kit, you know you’ve never felt anything like it. With a single use, this powerfull UI Kit lets you do more than ever before. </p>
                        <a href="#pablo">Find more...</a>
                    </div>
                </div>

            </div>

            <div class="col-md-4">
                <div class="info info-horizontal">
                    <div class="icon icon-danger">
                        <i class="material-icons">airplay</i>
                    </div>
                    <div class="description">
                        <h4 class="info-title">Airplay</h4>
                        <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                        <a href="#pablo">Find more...</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="info info-horizontal">
                    <div class="icon icon-success">
                        <i class="material-icons">location_on</i>
                    </div>
                    <div class="description">
                        <h4 class="info-title">Location Integrated</h4>
                        <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                        <a href="#pablo">Find more...</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <h2 class="title">多平台兼容</h2>
                <h5 class="description">手机，Pad, PC, 微信h5一步到位</h5>
            </div>
        </div>

        <div class="row">

            <div class="col-md-4 col-ls-4 col-sm-4">
                <div class="card card-profile card-plain">
                    <div class="card-image">
                        <a href="#pablo">
                            <img class="img" src="{{ asset('/images/app/pc.jpg') }}" />
                        </a>
                    </div>

                    <div class="content">
                        <h4 class="card-title">Alec Thompson</h4>
                        <h6 class="category text-muted">Managing Partner</h6>

                        <div class="footer">
                            <a href="#pablo" class="btn btn-just-icon btn-twitter btn-round"><i class="fa fa-twitter"></i></a>
                            <a href="#pablo" class="btn btn-just-icon btn-facebook btn-round"><i class="fa fa-facebook-square"></i></a>
                            <a href="#pablo" class="btn btn-just-icon btn-dribbble btn-round"><i class="fa fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-ls-4 col-sm-4">
                <div class="card card-profile card-plain">
                    <div class="card-image">
                        <a href="#pablo">
                            <img class="img" src="{{ asset('/images/app/phone.jpg') }}" />
                        </a>
                    </div>

                    <div class="content">
                        <h4 class="card-title">George West</h4>
                        <h6 class="category text-muted">Backend Hacker</h6>

                        <div class="footer">
                            <a href="#pablo" class="btn btn-just-icon btn-linkedin btn-round"><i class="fa fa-linkedin"></i></a>
                            <a href="#pablo" class="btn btn-just-icon btn-facebook btn-round"><i class="fa fa-facebook-square"></i></a>
                            <a href="#pablo" class="btn btn-just-icon btn-dribbble btn-round"><i class="fa fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-ls-4 col-sm-4">
                <div class="card card-profile card-plain">
                    <div class="card-image">
                        <a href="#pablo">
                            <img class="img" src="{{ asset('/images/app/pad.jpg') }}" />
                        </a>
                    </div>

                    <div class="content">
                        <h4 class="card-title">Gina Andrew</h4>
                        <h6 class="category text-muted">Photographer</h6>

                        <div class="footer">
                            <a href="#pablo" class="btn btn-just-icon btn-dribbble btn-round"><i class="fa fa-dribbble"></i></a>
                            <a href="#pablo" class="btn btn-just-icon btn-twitter btn-round"><i class="fa fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <h2 class="title">丰富的页面</h2>
            </div>
        </div>

        <div class="row">

            <div class="col-md-6 col-ls-6 col-sm-6">
                <div class="card card-profile card-plain">
                    <div class="col-md-5">
                        <div class="card-image">
                            <a href="#pablo">
                                <img class="img" src="{{ asset('/images/app/1.png') }}" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="content">
                            <h4 class="card-title">Alec Thompson</h4>
                            <h6 class="category text-muted">Founder</h6>

                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth...
                            </p>

                            <div class="footer">
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-facebook"><i class="fa fa-facebook-square"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-google"><i class="fa fa-google"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-ls-6 col-sm-6">
                <div class="card card-profile card-plain">
                    <div class="col-md-5">
                        <div class="card-image">
                            <a href="#pablo">
                                <img class="img" src="{{ asset('/images/app/2.png') }}" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="content">
                            <h4 class="card-title">Kendall Andrew</h4>
                            <h6 class="category text-muted">Graphic Designer</h6>

                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth...
                            </p>

                            <div class="footer">
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-linkedin"><i class="fa fa-linkedin"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-facebook"><i class="fa fa-facebook-square"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-dribbble"><i class="fa fa-dribbble"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-google"><i class="fa fa-google"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-ls-6 col-sm-6">
                <div class="card card-profile card-plain">
                    <div class="col-md-5">
                        <div class="card-image">
                            <a href="#pablo">
                                <img class="img" src="{{ asset('/images/app/3.png') }}" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="content">
                            <h4 class="card-title">Gina Andrew</h4>
                            <h6 class="category text-muted">Web Designer</h6>

                            <p class="card-description">
                                I love you like Kanye loves Kanye. Don't be scared of the truth.
                            </p>

                            <div class="footer">
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-youtube"><i class="fa fa-youtube-play"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-instagram"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-ls-6 col-sm-6">
                <div class="card card-profile card-plain">
                    <div class="col-md-5">
                        <div class="card-image">
                            <a href="#pablo">
                                <img class="img" src="{{ asset('/images/app/4.png') }}" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="content">
                            <h4 class="card-title">George West</h4>
                            <h6 class="category text-muted">Backend Hacker</h6>

                            <p class="card-description">
                                I love you like Kanye loves Kanye. Don't be scared of the truth because we need to restart the human foundation.
                            </p>

                            <div class="footer">
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-linkedin"><i class="fa fa-linkedin"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-facebook"><i class="fa fa-facebook-square"></i></a>
                                <a href="#pablo" class="btn btn-just-icon btn-simple btn-google"><i class="fa fa-google"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <h2 class="title">Some of Our Awesome Products - 2</h2>
                <h5 class="description">This is the paragraph where you can write more details about your projects. Keep you user engaged by providing meaningful information.</h5>
                <div class="section-space"></div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-6 col-lg-6">
                <div class="card card-plain">
                    <a href="http://www.creative-tim.com/product/material-kit" target="_blank">
                        <div class="card-image">
                            <img src="http://s3.amazonaws.com/creativetim_bucket/products/38/original/opt_mk_thumbnail.jpg?1458052306"/>
                        </div>
                    </a>
                    <div class="content">
                        <a href="http://www.creative-tim.com/product/material-kit" target="_blank">
                            <h4 class="card-title">Material Kit Free</h4>
                        </a>
                        <h6 class="category">Free UI Kit</h6>
                        <p class="card-description">
                            Material Kit is a Free Bootstrap UI Kit with a fresh, new design inspired by Google's material design. It's a great pleasure to introduce to you the material concepts in an easy to use and beautiful set of components.
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-sm-6 col-lg-6">
                <div class="card card-plain">
                    <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard-pro" target="_blank">
                        <div class="card-image">
                            <img src="http://s3.amazonaws.com/creativetim_bucket/products/34/original/opt_lbd_pro_new_thumbnail.jpg?1449352503" />
                        </div>
                    </a>
                    <div class="content">
                        <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard-pro" target="_blank">
                            <h4 class="card-title">Light Bootstrap Dashboard</h4>
                        </a>
                        <h6 class="category">Premium Template</h6>
                        <p class="card-description">
                            Light Bootstrap Dashboard PRO is a Bootstrap Admin Theme designed to look simple and beautiful. Forget about boring dashboards and grab yourself a copy to kickstart new project!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <h2 class="title">Some of Our Awesome Products - 2</h2>
                <h5 class="description">This is the paragraph where you can write more details about your projects. Keep you user engaged by providing meaningful information.</h5>
                <div class="section-space"></div>
            </div>
        </div>

        <div class="row">
            <div class="card card-plain">
                    <a href="http://www.creative-tim.com/product/material-kit" target="_blank">
                        <div class="card-image">
                            <img src="http://s3.amazonaws.com/creativetim_bucket/products/38/original/opt_mk_thumbnail.jpg?1458052306"/>
                        </div>
                    </a>
                    <div class="content">
                        <a href="http://www.creative-tim.com/product/material-kit" target="_blank">
                            <h4 class="card-title">Material Kit Free</h4>
                        </a>
                        <h6 class="category">Free UI Kit</h6>
                        <p class="card-description">
                            Material Kit is a Free Bootstrap UI Kit with a fresh, new design inspired by Google's material design. It's a great pleasure to introduce to you the material concepts in an easy to use and beautiful set of components.
                        </p>
                    </div>
                </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <h2 class="title">What Clients Say</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card card-testimonial card-plain">
                    <div class="card-avatar">
                        <a href="#pablo">
                            <img class="img" src="{{ asset('/images/other.jpg') }}" />
                        </a>
                    </div>

                    <div class="content">
                        <h4 class="card-title">Mike Andrew</h4>
                        <h6 class="category text-muted">CEO @ Marketing Digital Ltd.</h6>
                        <h5 class="card-description">"I speak yell scream directly at the old guard on behalf </h5>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card card-testimonial card-plain">
                    <div class="card-avatar">
                        <a href="#pablo">
                            <img class="img" src="{{ asset('/images/other.jpg') }}" />
                        </a>
                    </div>

                    <div class="content">
                        <h4 class="card-title">Tina Thompson</h4>
                        <h6 class="category text-muted">Marketing @ Apple Inc.</h6>
                        <h5 class="card-description">"I promise I will never let the pe</h5>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card card-testimonial card-plain">
                    <div class="card-avatar">
                        <a href="#pablo">
                            <img class="img" src="{{ asset('/images/other.jpg') }}" />
                        </a>
                    </div>

                    <div class="content">
                        <h4 class="card-title">Gina West</h4>
                        <h6 class="category text-muted">CFO @ Apple Inc.</h6>
                        <h5 class="card-description">"I've been trying to figure out the bed design for the </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>