@extends('productPool.template')

@section('main')
	<div class="row">
		<div class="box">
			<div class="col-lg-12">
				<hr>
				@if($id=='tao-moi')	
					<h2 class="intro-text text-center">Tạo mới hoá đơn</h2>
					<hr>
				
					{!! Form::open(['url' => 'hoa-don/tao-moi', 'method' => 'post']) !!}	
					
						<div class="row">
							<div class='col-md-4 form-group'>
								<label>Chọn khách hàng</label>
								<select name='maKH' id='maKH' class='form-control'>
									@foreach($customers as $customer)
										<option value="{{$customer->maKH}}">{{$customer->hoTen}}</option>
									@endforeach
								</select>
							</div>
							<div class='col-md-12'></div>

							<div class='col-md-4 form-group'>
								<label>Chọn nhân viên</label>
								<select name='maNV' id='maNV' class='form-control'>
									@foreach($employees as $employee)
										<option value="{{$employee->maNV}}">{{$employee->hoTen}}</option>
									@endforeach
								</select>
							</div>

							<div class='col-md-4 form-group'>
								<label>Chọn sản phẩm</label>
								<select name='maSP' id='maSP' class='form-control'>
									@foreach($products as $product)
										<option value="{{$product->maSP}}">{{$product->tenSP}}</option>
									@endforeach
								</select>
							</div>

							{!! Form::control('number', 4, 'soLuong', $errors, 'Số lượng') !!}

							{!! Form::submit('Lưu lại', ['col-lg-12']) !!}

						</div>
						
					{!! Form::close() !!}		
				@else
					<h2 class="intro-text text-center">Chi tiết hoá đơn</h2>
					<hr>
					<div class='col-md-4'>
						<label>Mã Hóa đơn: {{$bill -> maHD}}</label>
					</div>
					<div class='col-md-4'>
						<label>Mã Nhân viên: {{$bill -> maNV}}</label>
					</div>
					<div class='col-md-4'>
						<label>Mã khách hàng: {{$bill -> maKH}}</label>
					</div>
					<div class='col-md-4'>
						<label>Mã Sản phẩm: {{$bill -> maSP}}</label>
					</div>
					<div class='col-md-4'>
						<label>Số lượng: {{$bill -> soLuong}}</label>
					</div>
					<div class='col-md-4'>
						<label>Thành tiền: {{$bill -> tongTien}}</label>
					</div>
					<hr>			
				@endif
			</div>
		</div>
	</div>
@stop