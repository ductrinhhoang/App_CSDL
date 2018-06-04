@extends('productPool.template')

@section('main')
	<div class="row">
		<div class="box">
			<div class="col-lg-12">
				<hr>	
				<h2 class="intro-text text-center">Tạo mới nhân viên</h2>
				<hr>
				
				{!! Form::open(['url' => 'nhan-vien/tao-moi', 'method' => 'post']) !!}	
				
					<div class="row">

						{!! Form::control('text', 4, 'CMND', $errors, 'CMND') !!}
						{!! Form::control('text', 4, 'hoTen', $errors, 'Họ tên') !!}
						{!! Form::control('number', 4, 'luong', $errors, 'Lương') !!}
						{!! Form::control('text', 4, 'gioiTinh', $errors, 'Giới tính') !!}
						{!! Form::control('text', 4, 'diachi', $errors, 'Địa chỉ') !!}
						{!! Form::control('text', 4, 'ngaySinh', $errors, 'Ngày sinh') !!}

					  	{!! Form::submit('Lưu lại', ['col-lg-12']) !!}

					</div>
					
				{!! Form::close() !!}

			</div>
		</div>
	</div>
@stop