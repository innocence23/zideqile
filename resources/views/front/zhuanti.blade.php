@extends('layouts.front')

@section('html_title', '专题列表')

@section('main-content')
	<div class="main main-raised">
		<div class="container">
			<h2 class="title">专题列表</h2>
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr>
						<th class="text-center">#</th>
						<th>标题</th>
					</tr>
					<tbody>
					@foreach($zhuantis as $k=>$zhuanti)
						<tr>
							<td class="text-center">{{ $k+1 }}</td>
							<td>
								<a href="{{ route('zhuanti-info', $zhuanti->id) }}"> {{ $zhuanti->name }} </a>
							</td>
						</tr>
					@endforeach
					</tbody>
				</table>
			</div>
            {!! $zhuantis->links() !!}
		</div>
	</div>
@endsection

@section('js')
@endsection