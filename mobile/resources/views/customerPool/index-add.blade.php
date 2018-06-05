@extends('productPool.template')

@section('main')
	<div class="row">
		<div class="box">
			<div class="col-lg-12">
				<hr>
					<h2 class="intro-text text-center">Tạo mới khách hàng</h2>
					<hr>
					
					{!! Form::open(['url' => 'khach-hang/tao-moi', 'method' => 'post']) !!}	
					
						<div class="row">

							{!! Form::control('text', 4, 'hoTen', $errors, 'Họ tên') !!}
							{!! Form::control('email', 4, 'email', $errors, 'Email') !!}
							{!! Form::control('text', 4, 'sdt', $errors, 'SĐT') !!}
							{!! Form::submit('Lưu lại', ['col-lg-12']) !!}

						</div>
						
					{!! Form::close() !!}
				</div>
		</div>
	</div>
@stop