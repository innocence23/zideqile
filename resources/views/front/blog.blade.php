@extends('layouts.front')

@section('html_title')
   {{ $blog->title or "博客"}}
@endsection

@section('main-content')
    <div class="main main-raised">
        <div class="container blog-post">
            <div class="section section-text">
                {{--面包屑--}}
                <div class="main-white">
                    <ul class="breadcrumb">
                        <li>
                            <a href="/">首页</a>
                        </li>
                        <li>
                            <a href="{{ route('blog.category', $blog->category->name) }}">{{$blog->category->name}}</a>
                        </li>
                        <li class="active">{{ $blog->name }}</li>
                    </ul>
                </div>

                <h3 class="title">{{ $blog->title }}</h3>
                <div class="clearfix entry-meta">
                    <span class="pull-left">
                        <span class="fa fa-calendar" title=" {{ $blog->created_at }}">
                            <time> <?php echo $blog->created_at->toDateString(); ?>  </time>&nbsp;&nbsp;
                            <span> 阅：{{$viewcount}}  </span>&nbsp;&nbsp;
                        </span>
                        <span class="fa fa-folder-open-o">
                            <a href="{{ route('blog.category', $blog->category->name) }}" >
                                {{ $blog->category->name }}</a>&nbsp;&nbsp;</span>
                        <span class="fa fa-comments-o">
                            <a href="#maodian-comments"> <span>{{ $blog->comments()->count() }}</span> 条评论</a>&nbsp;&nbsp;
                        </span>
                        <span class="fa fa-user"><a href="#pablo"> {{ $blog->user->name }} </a>&nbsp;&nbsp;</span>
                    </span>
                </div>
                <h1>{{ $blog->name }}</h1>
                <div id="content" class="section-text">
                    {!! $blog->content !!}
                </div>
            </div>

            <div class="section-blog-info">
                <div class="blog-tags">
                    <strong>Tags:</strong>
                    @foreach($blog->tags as $tag)
                        <a href="{{ route('blog.tag', $tag->name) }}" class="label btn btn-default">{{$tag->name}}</a>
                    @endforeach
                </div>
            </div>

            <div class="section section-comments">
                <div class="media-area">
                    <a name="maodian-comments" id="maodian-comments"></a>
                    <h3 class="title text-center"> <span id="ccount">{{ $blog->comments()->count() }}</span> 条评论</h3>
                    <div id="comments"></div>
                </div>
                <h5 class="text-center comment_markup">登陆后 发表评论</h5>

                @if (Auth::guest())
                    <div class="media media-post" id="comment_textarea">
                        <div class="alert alert-info">
                            1、上传图片, 支持拖拽和剪切板黏贴上传, 格式限制 - jpg, png, gif<br/>
                            2、支持表情，使用方法请见Emoji自动补全来咯，请见 :metal: :point_right: Emoji列表 :star: :sparkles:
                        </div>
                        <a class="pull-left author" href="#pablo">
                            <div class="avatar">
                                <img class="media-object" alt="64x64" src="{{ asset('/images/placeholder.jpg') }}">
                            </div>
                        </a>

                        <div class="media-body">
                            <form role="form" id="comment-form" method="post">
                                {{ csrf_field() }}
                                <input type="hidden" name="type" value="post">
                                <input type="hidden" name="post_id" value="{{$blog->id}}">
                                <input type="hidden" name="parent_id" value="0">
                                <div class="label-floating row">
                                    <div class="col-sm-6">
                                        <input type="text" name="name" class="form-control"  placeholder="名字昵称">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="email" name="email" class="form-control" placeholder="Email" />
                                    </div>
                                </div>
                                <div class="form-group label-floating">
                                    <textarea class="form-control" required name="content"
                                              placeholder="写下你想说的话" rows="3"></textarea>
                                </div>
                                <div class="submit media-footer">
                                    <a target="_blank" href="/login/google">
                                        <span class="btn btn-just-icon btn-round btn-google" >
                                            <i class="fa fa-google"></i>
                                        </span>
                                    </a>
                                    <a target="_blank" href="/login/facebook">
                                        <span class="btn btn-just-icon btn-round btn-facebook" >
                                            <i class="fa fa-facebook"></i>
                                        </span>
                                    </a>
                                    <a target="_blank" href="/login/github">
                                        <span class="btn btn-just-icon btn-round btn-github" >
                                            <i class="fa fa-github"></i>
                                        </span>
                                    </a>
                                    <input type="button" class="btn btn-primary btn-round btn-wd pull-right"
                                           value="确定" id="submit-comment" />
                                    <input type="button" style="display: none" class="btn btn-round btn-wd pull-right"
                                           value="取消回复" id="cancel-comment"/>
                                </div>
                            </form>
                        </div>
                    </div> <!-- end media-post -->
                @else
                    <div class="media media-post" id="comment_textarea">
                        <div class="alert alert-info">
                            1、上传图片, 支持拖拽和剪切板黏贴上传, 格式限制 - jpg, png, gif<br/>
                            2、支持表情，使用方法请见Emoji自动补全来咯，请见 :metal: :point_right: Emoji列表 :star: :sparkles:
                        </div>
                        <a class="pull-left author" href="#pablo">
                            <div class="avatar">
                                <img class="media-object" alt="64x64"
                                     src="{{ \Auth::user()->avatar ?: asset('/images/placeholder.jpg') }}">
                            </div>
                        </a>
                        <div class="media-body">
                            <form role="form" id="comment-form" method="post">
                                {{ csrf_field() }}
                                <input type="hidden" name="post_id" value="{{$blog->id}}">
                                <input type="hidden" name="user_id" value="{{\Auth::id()}}">
                                <input type="hidden" name="parent_id" value="0">
                                <div class="form-group label-floating">
                                    <textarea class="form-control" required name="content"
                                              placeholder="写下你想说的话" rows="3"></textarea>
                                </div>
                                <div class="submit text-center">
                                    <input type="button" class="btn btn-primary btn-round btn-wd pull-right"
                                           value="确定" id="submit-comment" />
                                    <input type="button" style="display: none" class="btn btn-round btn-wd pull-right"
                                           value="取消回复" id="cancel-comment"/>
                                </div>
                            </form>
                        </div>
                    </div> <!-- end media-post -->
                @endif
            </div>

        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="title text-center">相关推荐</h2>
                <br/>
                <div class="row">
                    @foreach($similarPosts as $similarPost)
                        <div class="col-md-4">
                            <div class="card card-blog">
                                <div class="card-image">
                                    <a href="{{ route('blog', $similarPost->slug)}}">
                                        <img class="img img-raised" src="{{ '/uploads/'.$similarPost->image }}" />
                                    </a>
                                </div>
                                <div class="card-content">
                                    <h4 class="card-title">
                                        <a href="{{ route('blog', $similarPost->slug)}}">{{ $similarPost->title }}</a>
                                    </h4>
                                    <p class="card-description">{{ $similarPost->desc }}
                                        <a href="{{ route('blog', $similarPost->slug)}}"> 更多 </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection

@section('css')
    <style rel="stylesheet">
        .media-footer a.btn {
            margin: 0 12px 2px !important;
            padding: 0 !important;
        }
    </style>
@endsection

@section('js')
    <script src="/plugins/InlineAttachment-master/dist/inline-attachment.js"></script>
    <script src="/plugins/InlineAttachment-master/dist/jquery.inline-attachment.js"></script>
    <script type="text/javascript">
        $(function() {
            $('#content table').addClass('table table-bordered');
            // 评论样式支持图片
            $('textarea').inlineattachment({
                uploadUrl: '{{route("api.image.jsadd")}}'
            });
            //提交论
            $('#submit-comment').on('click', function () {
                var data = $("#comment-form").serialize();
                $.post("{{route('api.comment')}}", data,
                    function(data){
                        $('#comment_textarea input[name="parent_id"]').val(0);
                        $('.comment_markup').after($('#comment_textarea'));
                        $('#comment-form textarea').val('');
                        $('.label-floating.row input').val('');
                        $('#cancel-comment').hide();
                        var c = parseInt($('#ccount').html()) + 1;
                        $('#ccount').html(c);
                        $('.fa.fa-comments-o a span').html(c);
                        getComments();
                    });
            });
            //评论模块
            getComments();
            function getComments(){
                var $url = "{{route('api.comment.data', '')}}";
                $url += "/post/" + '{{$blog->id}}';
                $.get($url,
                //$.get("/admin/common/list-comment/"+'{{$blog->id}}',
                    function(data){
                        $('#comments').html(data);
                        //评论样式处理
                        $('#comments div.media-footer a[rel="tooltip"]').on('click',function () {
                            $('#comment_textarea input[name="parent_id"]').val($(this).attr('index'));
                            $(this).parent('.media-footer').after($('#comment_textarea'));
                            $('#cancel-comment').show();
                        });
                        $('#cancel-comment').on('click', function () {
                            $('#comment_textarea input[name="parent_id"]').val(0);
                            $('.comment_markup').after($('#comment_textarea'));
                            $('#cancel-comment').hide();
                        });
                    }
                );
            }
        });
    </script>
@endsection