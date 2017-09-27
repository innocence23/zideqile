<p>
    联系人的详细信息：
</p>
<ul>
    @if($subject)
        <li>主题: <strong>{{ $subject }}</strong></li>
    @endif
    @if($name)
        <li>名字: <strong>{{ $name }}</strong></li>
    @endif
    @if($email)
        <li>邮箱: <strong>{{ $email }}</strong></li>
    @endif
    @if($phone)
        <li>手机: <strong>{{ $phone }}</strong></li>
    @endif
</ul>
<hr>
<p>
    @if($messageLines)
        @foreach ($messageLines as $messageLine)
            {{ $messageLine }}<br>
        @endforeach
    @endif
</p>
<hr>