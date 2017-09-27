<!doctype html>
<html lang="zh-cn">
<head>
@include('layouts.partials.css')
</head>
<body class="index-page">
@include('layouts.partials.navbar')

@yield('main-content')

@include('layouts.partials.footer')

@include('layouts.partials.js')

</body>
</html>