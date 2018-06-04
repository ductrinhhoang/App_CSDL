@extends('productPool.template')

@section('main')
	<div class="row">
		<div class="box">
			<div class="col-lg-12">
				<hr>	
				<h2 class="intro-text text-center">Contact Form</h2>
				<hr>
				<p>Nếu quí khách muốn gửi phản ánh xin vui lòng vào mẫu dưới đây</p>				
				
				{!! Form::open(['url' => 'contact', 'method' => 'post', 'role' => 'form']) !!}	
				
					<div class="row">

						{!! Form::control('text', 6, 'name', $errors, 'Họ và tên') !!}
						{!! Form::control('email', 6, 'email', $errors, 'Email') !!}
						{!! Form::control('textarea', 12, 'message', $errors, 'Phản ánh của bạn') !!}
						{!! Form::text('address', '', ['class' => 'hpet']) !!}		

					  	{!! Form::submit('Lưu lại', ['col-lg-12']) !!}

					</div>
					
				{!! Form::close() !!}

			</div>
		</div>
	</div>
@stop