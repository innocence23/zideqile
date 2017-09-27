<!-- Modal -->
<div class="modal fade" id="exampleModal" style="background: rgba(0,0,0,0.83);"
     tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="margin-top: 200px;">
        <input type="text" name="search" placeholder="搜索最懂你"
               style="width: 100%; height: 50px; line-height: 100%; padding: 20px; border-radius: 5px;">
    </div>
</div>
<ul class="pull-left">
    <li>
        <a href="{{ route('contact') }}">
            联系我们
        </a>
    </li>
    <li>
        <a href="{{ route('cooperation') }}">
            商务合作
        </a>
    </li>
    <li>
        <a href="{{ route('about') }}#join-us">
            加入我们
        </a>
    </li>
    <li>
        <a href="{{ route('help') }}">
            帮助中心
        </a>
    </li>
    <li>
        <a href="{{ route('item') }}">
            免责声明
        </a>
    </li>
</ul>
<div class="copyright pull-right">
    {{$setting['copyright']}}
</div>