<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>图片上传</title>
    <!-- Bootstrap 3.3.6 -->
    <link href="{{ asset('/vendor/adminlte/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css"/>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Latest compiled and minified CSS -->
    <link href="{{ asset('/vendor/plugins/cropper-master/dist/cropper.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('/vendor/plugins/customize/cropper/cropper_file.css') }}" rel="stylesheet" type="text/css"/>
</head>
<body style="margin: 20px 0">
<div class="container spark-screen" >
    <div class="row panel-default">
        <div class="row">
            <form class="form" action="" enctype="multipart/form-data" method="post">
                {{csrf_field()}}
                <div class="form-group">
                    <input type="file" name="file" id="file" class="form-control">
                    <input type="hidden" name="btn" id="btn-parent" class="form-control" value="{{$btn}}">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-default btn-block" id="btnUpload">上传</button>
                </div>
            </form>
        </div>
        <div class="row">
            <div class="col-md-10">
                <!-- <h3>Demo:</h3> -->
                <div class="img-container">
                    <img id="image" src="{{$image ?: ''}}" alt="Picture">
                </div>
            </div>
            <div class="col-md-2">
                <!-- <h3>Preview:</h3> -->
                <div class="docs-preview clearfix">
                    <div class="img-preview preview-lg"></div>
                    <div class="img-preview preview-md"></div>
                    <div class="img-preview preview-sm"></div>
                    <div class="img-preview preview-xs"></div>
                </div>
                <div class="docs-toggles">
                    <!-- <h3>Toggles:</h3> -->
                    <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
                        <label class="btn btn-primary active">
                            <input type="radio" class="sr-only" id="aspectRatio0" name="aspectRatio" value="1.7777777777777777">
                            <span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="aspectRatio: 16 / 9">16:9</span>
                        </label>
                        <label class="btn btn-primary">
                            <input type="radio" class="sr-only" id="aspectRatio1" name="aspectRatio" value="1.3333333333333333">
                            <span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="aspectRatio: 4 / 3"> 4:3</span>
                        </label>
                        <label class="btn btn-primary">
                            <input type="radio" class="sr-only" id="aspectRatio2" name="aspectRatio" value="1">
                            <span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="aspectRatio: 1 / 1">1:1</span>
                        </label>
                        <label class="btn btn-primary">
                            <input type="radio" class="sr-only" id="aspectRatio4" name="aspectRatio" value="NaN">
                            <span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="aspectRatio: NaN">Free</span>
                        </label>
                    </div>
                </div><!-- /.docs-toggles -->
                <div class="docs-buttons">
                    <!-- <h3>Toolbar:</h3> -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="move" title="Move">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
<span class="fa fa-arrows"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="crop" title="Crop">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;setDragMode&quot;, &quot;crop&quot;)">
<span class="fa fa-crop"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="zoom" data-option="0.1" title="Zoom In">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;zoom&quot;, 0.1)">
<span class="fa fa-search-plus"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="zoom" data-option="-0.1" title="Zoom Out">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;zoom&quot;, -0.1)">
<span class="fa fa-search-minus"></span>
</span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary" data-method="move" data-option="-10" data-second-option="0"
                                title="Move Left">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;move&quot;, -10, 0)">
<span class="fa fa-arrow-left"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="move" data-option="10" data-second-option="0"
                                title="Move Right">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;move&quot;, 10, 0)">
<span class="fa fa-arrow-right"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="-10"
                                title="Move Up">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;move&quot;, 0, -10)">
<span class="fa fa-arrow-up"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="10"
                                title="Move Down">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;move&quot;, 0, 10)">
<span class="fa fa-arrow-down"></span>
</span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary" data-method="rotate" data-option="-45" title="Rotate Left">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;rotate&quot;, -45)">
<span class="fa fa-rotate-left"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="rotate" data-option="45" title="Rotate Right">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;rotate&quot;, 45)">
<span class="fa fa-rotate-right"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="scaleX" data-option="-1" title="Flip Horizontal">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;scaleX&quot;, -1)">
<span class="fa fa-arrows-h"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="scaleY" data-option="-1" title="Flip Vertical">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;scaleY&quot;, -1)">
<span class="fa fa-arrows-v"></span>
</span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary" data-method="crop" title="Crop">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false"
      title="$().cropper(&quot;crop&quot;)">
<span class="fa fa-check"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="clear" title="Clear">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;clear&quot;)">
<span class="fa fa-remove"></span>
</span>
                        </button>
                        <button type="button" class="btn btn-primary" data-method="reset" title="Reset">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="$().cropper(&quot;reset&quot;)">
<span class="fa fa-refresh"></span>
</span>
                        </button>
                        <label class="btn btn-primary btn-upload" for="inputImage" title="Upload image file">
                            <input type="file" class="sr-only" id="inputImage" name="file" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                            <span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="Import image with Blob URLs">
<span class="fa fa-upload"></span>
</span>
                        </label>
                    </div>
                    <!-- Show the cropped image in modal -->
                    <div class="modal fade docs-cropped" id="getCroppedCanvasModal" aria-hidden="true"
                         aria-labelledby="getCroppedCanvasTitle" role="dialog" tabindex="-1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="getCroppedCanvasTitle">Cropped</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body"></div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <a class="btn btn-primary" id="download" href="javascript:void(0);" download="cropped.jpg">Download</a>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.modal -->
                    <button type="button" class="btn btn-primary" data-method="moveTo" data-option="0">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="cropper.moveTo(0)">
Move to [0,0]
</span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="zoomTo" data-option="1">
<span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="cropper.zoomTo(1)">
Zoom to 100%
</span>
                    </button>
                </div><!-- /.docs-buttons -->
            </div>
        </div>

        <div class="row">
            <form>
                <input type="hidden" name="x" id="x">
                <input type="hidden" name="y" id="y">
                <input type="hidden" name="w" id="w">
                <input type="hidden" name="h" id="h">
                <input type="button" value="保存" class="btn btn-block" id="btn-submit">
            </form>
        </div>
    </div>
</div>

<!-- jQuery 2.2.3 -->
<script src="{{ asset('/vendor/adminlte/plugins/jQuery/jquery-2.2.3.min.js') }}" type="text/javascript"></script>
<!-- Bootstrap 3.3.6 -->
<script src="{{ asset('/vendor/adminlte/bootstrap/js/bootstrap.min.js') }}" type="text/javascript"></script>

<script src="{{ asset('/vendor/plugins/cropper-master/dist/cropper.js') }}" type="text/javascript"></script>
<script src="{{ asset('/vendor/plugins/customize/cropper/cropper_file.js') }}" type="text/javascript"></script>

<script>
    $(function () {
        var select_dom = '{{$btn}}';
        $('#btn-submit').click(function () {
            var fd = {
                image: $('#image').attr('src'),
                x: $('#x').val(),
                y: $('#y').val(),
                w: $('#w').val(),
                h: $('#h').val(),
                _token: '{{ csrf_token() }}'
            };
            $.ajax({
                type: 'POST',
                url: '{{route('api.image.cropper')}}',
                data: fd
            }).done(function (data) {
                parent.$('#'+select_dom).val(data).trigger('change');
                //因为前面用的angular 所以要手动触发一下
                //关闭弹层
                parent.layer.close(parent.layer.getFrameIndex(window.name));
                //console.log(data);
            });
        });

        $('#image').cropper({
            aspectRatio: 16 / 9,
            preview: '.img-preview',
            crop: function (e) {
                $('#x').val(e.x);
                $('#y').val(e.y);
                $('#w').val(e.width);
                $('#h').val(e.height);
            }
        });
    })
</script>
</body>
</html>











