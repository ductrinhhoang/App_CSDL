@extends('productPool.template')

@section('main')
	<div class="row">
		<div class="box">
			<div class="col-lg-12">
				<hr>	
				<h2 class="intro-text text-center">Tạo mới</h2>
				<hr>
				
				{!! Form::open(['url' => 'tao-moi', 'method' => 'post']) !!}	
				
					<div class="row">

						{!! Form::control('text', 4, 'tenSP', $errors, 'Tên Sản Phẩm') !!}
						{!! Form::control('text', 4, 'hangSX', $errors, 'Hãng sản xuất') !!}
						{!! Form::control('number', 4, 'giaTien', $errors, 'Giá tiền') !!}
						{!! Form::control('text', 4, 'kichThuoc', $errors, 'Kích Thước') !!}
						{!! Form::control('text', 4, 'phanGiai', $errors, 'Độ phân giải') !!}
						{!! Form::control('text', 4, 'CPU', $errors, 'CPU') !!}
						{!! Form::control('text', 4, 'heDieuHanh', $errors, 'Hệ điều hành') !!}
						{!! Form::control('text', 4, 'RAM', $errors, 'RAM') !!}
						{!! Form::control('text', 4, 'mayAnhChinh', $errors, 'Máy ảnh chính') !!}
						{!! Form::control('text', 4, 'boNhoTrong', $errors, 'Bộ nhớ trong') !!}
						{!! Form::control('text', 4, 'dungLuongPin', $errors, 'Dung lượng pin') !!}
						{!! Form::control('text', 4, 'link', $errors, 'Link sản phẩm') !!}

					  	{!! Form::submit('Lưu lại', ['col-lg-12']) !!}

					</div>
					
				{!! Form::close() !!}

			</div>
		</div>
	</div>
@stop