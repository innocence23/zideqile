@extends('layouts.front')

@section('html_title', '专题列表')

@section('main-content')
	<div class="main main-raised">
		<div class="container">
			<h2 class="title">专题列表</h2>

			<ul class="list">
				@foreach($zhuantis as $zhuanti)
					<li class="list-group-item">
                        <a href="{{ route('zhuanti-info', $zhuanti->id) }}"> {{ $zhuanti->name }} </a>
                    </li>
				@endforeach
			</ul>

            {!! $zhuantis->links() !!}

		</div>
	</div>

@endsection

@section('js')
@endsection