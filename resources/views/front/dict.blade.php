@extends('layouts.front')

@section('html_title')
    {{ $dict->title or "博客"}}
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
                            <a href="{{route('dict-type', ['cate', $dict->category->id])}}">{{$dict->category->name}}</a>
                        </li>
                        <li class="active">{{ $dict->fanti }}</li>
                    </ul>
                </div>

                <h3 class="title">{{ $dict->jianti }} / {{ $dict->fanti }}</h3>
                <div class="clearfix entry-meta">
                    <span class="pull-left">
                        <span class="fa fa-calendar">
                            <span> 阅：{{$viewcount}}  </span>&nbsp;&nbsp;
                        </span>
                        <span class="fa fa-folder-open-o">
                            <a href="{{route('dict-type', ['cate', $dict->category->id])}}">
                                {{$dict->category->name}}</a>&nbsp;&nbsp;
                        </span>
                        <span class="fa fa-comments-o">
                            <a href="#maodian-comments"> <span>{{ $dict->comments()->count() }}</span> 条评论</a>&nbsp;&nbsp;
                        </span>
                    </span>
                </div>
                <hr>
                <div id="content" class="section-text">
                    <div class="row">
                        <div class="col-md-9 dict-border">
                            <div class="card card-plain">
                                <div class="col-md-3 col-xs-6">
                                    <div class="dict-img">
                                        <div class="dict-title">{{$dict->fanti}}</div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-xs-6">
                                    <div class="dict-zitu">
                                        <a data-fancybox class="card-image" href="{{'/uploads/'.$dict->zitu}}">
                                            <img src="{{'/uploads/'.$dict->zitu}}"
                                                 alt="{{$dict->fanti}}" class="img-rounded">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <table class="table table-bordered table-hover">
                                            <tbody>
                                            <tr>
                                                <td width="20%">拼 音</td>
                                                <td>
                                                    <strong><a href="{{route('dict-type', ['pinyin', $dict->pinyin])}}">{{$dict->pinyin}}</a></strong>
                                                </td>
                                                <td width="20%">简 体</td>
                                                <td><strong>{{$dict->fanti}}</strong></td>
                                            </tr>
                                            <tr>
                                                <td width="20%">繁 体</td>
                                                <td><strong>{{$dict->jianti}}</strong></td>
                                                <td width="20%">部 首</td>
                                                <td>
                                                    <strong><a href="{{route('dict-type', ['bushou', $dict->bushou->id])}}">{{$dict->bushou->name}}</a></strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="20%">异体字</td>
                                                <td colspan="3"><strong>{{$dict->yitizi}}</strong></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                </div>
                            </div>

                            <div class="panel panel-danger">
                                <div class="panel-heading">
                                    <h3>甲骨文</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="card card-profile card-plain">
                                        <a class="card-image" data-fancybox data-caption="{{$dict->fanti}}" href="{{'/uploads/'.$dict->image}}">
                                            <img src="{{'/uploads/'.$dict->image}}" alt="{{$dict->fanti}}" class="img-rounded">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3>说文解字</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="well well-lg">
                                        {{$dict->shuowen}}
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h3>释义</h3>
                                </div>
                                <div class="panel-body">
                                    {!! $dict->jieshi !!}
                                </div>
                            </div>
                            <div class="panel panel-warning">
                                <div class="panel-heading">
                                    <h3>组词</h3>
                                </div>
                                <div class="panel-body">
                                    {!! $dict->cizu !!}
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="lead">相关字</div>
                            <div class="row">
                                @foreach($similarDicts as $v)
                                <div class="col-xs-4 col-md-6 card-profile">
                                    <a href="{{route('dict', $v->slug)}}">
                                        <div class="dict-img">
                                            <div class="dict-title">{{$v->fanti}}</div>
                                        </div>
                                    </a>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section-blog-info">
                <div class="blog-tags">
                    <strong>Tags:</strong>
                    @foreach($dict->tags as $tag)
                    <a href="{{route('dict-type', ['tag', $tag->id])}}" class="label btn btn-default">{{$tag->name}}</a>
                    @endforeach
                </div>
            </div>

            <div class="section section-comments">
                <div class="media-area">
                    <a name="maodian-comments" id="maodian-comments"></a>
                    <h3 class="title text-center"><span id="ccount">{{ $dict->comments()->count() }}</span> 条评论</h3>
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
                                <input type="hidden" name="type" value="dict">
                                <input type="hidden" name="post_id" value="{{$dict->id}}">
                                <input type="hidden" name="parent_id" value="0">
                                <div class="label-floating row">
                                    <div class="col-sm-6">
                                        <input type="text" name="name" class="form-control" placeholder="名字昵称">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="email" name="email" class="form-control" placeholder="Email"/>
                                    </div>
                                </div>
                                <div class="form-group label-floating">
                                    <textarea class="form-control" required name="content"
                                              placeholder="写下你想说的话" rows="3"></textarea>
                                </div>
                                <div class="submit media-footer">
                                    <a target="_blank" href="/login/google">
                                        <span class="btn btn-just-icon btn-round btn-google">
                                            <i class="fa fa-google"></i>
                                        </span>
                                    </a>
                                    <a target="_blank" href="/login/facebook">
                                        <span class="btn btn-just-icon btn-round btn-facebook">
                                            <i class="fa fa-facebook"></i>
                                        </span>
                                    </a>
                                    <a target="_blank" href="/login/github">
                                        <span class="btn btn-just-icon btn-round btn-github">
                                            <i class="fa fa-github"></i>
                                        </span>
                                    </a>
                                    <input type="button" class="btn btn-primary btn-round btn-wd pull-right"
                                           value="确定" id="submit-comment"/>
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
                                <input type="hidden" name="post_id" value="{{$dict->id}}">
                                <input type="hidden" name="user_id" value="{{\Auth::id()}}">
                                <input type="hidden" name="parent_id" value="0">
                                <div class="form-group label-floating">
                                    <textarea class="form-control" required name="content"
                                              placeholder="写下你想说的话" rows="3"></textarea>
                                </div>
                                <div class="submit text-center">
                                    <input type="button" class="btn btn-primary btn-round btn-wd pull-right"
                                           value="确定" id="submit-comment"/>
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

@endsection

@section('css')
    <style rel="stylesheet">
        .media-footer a.btn {
            margin: 0 12px 2px !important;
            padding: 0 !important;
        }
        div.dict-border {
            border-right: 1px solid #EEE;
        }
        .panel .panel-heading {
            padding: 3px 0 !important;
        }
        .panel {
            margin-bottom: 0 !important;
        }
        .panel h3, .card, .well, .blog-post .section-text p{
            margin:3px 0 !important;
        }
        .blog-post .section-text p {
            font-size: 14px !important;
        }
        div.dict-zitu {
            width: 120px;
            height: 140px;
        }
        div.dict-img {
            width: 100px;
            height: 100px;
            background-position: center center;
            background-size: cover;
            background-repeat: no-repeat;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-image: url(/images/dict.jpg);
        }
        div.dict-title{
            margin: 0;
            padding: 0;
            font-size: 60px;
            color: black;
        }
    </style>
@endsection

@section('js')
    <script src="/plugins/InlineAttachment-master/dist/inline-attachment.js"></script>
    <script src="/plugins/InlineAttachment-master/dist/jquery.inline-attachment.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#content table').addClass('table table-bordered');
            // 评论样式支持图片
            $('textarea').inlineattachment({
                uploadUrl: '{{route("api.image.jsadd")}}'
            });
            //提交论
            $('#submit-comment').on('click', function () {
                var data = $("#comment-form").serialize();
                $.post("{{route('api.comment')}}", data,
                    function (data) {
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

            function getComments() {
                var $url = "{{route('api.comment.data', '')}}";
                $url += "/dict/" + '{{$dict->id}}';
                $.get($url,
                //$.get("/admin/common/list-comment/dict/"+'{{$dict->id}}',
                    function (data) {
                        $('#comments').html(data);
                        //评论样式处理
                        $('#comments div.media-footer a[rel="tooltip"]').on('click', function () {
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