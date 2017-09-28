<p>
    联系人的详细信息：
</p>
<ul>
    @if(isset($subject))
        <li>主题: <strong>{{ $subject }}</strong></li>
    @endif
    @if(isset($name))
        <li>名字: <strong>{{ $name }}</strong></li>
    @endif
    @if(isset($email))
        <li>邮箱: <strong>{{ $email }}</strong></li>
    @endif
    @if(isset($phone))
        <li>手机: <strong>{{ $phone }}</strong></li>
    @endif
</ul>
<hr>
<p>
    @if(isset($messageLines))
        @foreach ($messageLines as $messageLine)
            {{ $messageLine }}<br>
        @endforeach
    @endif
</p>
<hr>