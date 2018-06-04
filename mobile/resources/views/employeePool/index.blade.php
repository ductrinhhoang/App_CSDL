@extends('productPool.template')

@section('main')
    <div class='col-md-12' style="padding: 0; border-radius: 5px; background: whitesmoke;margin-bottom: 10px">        
        <div class='col-md-12' style='margin: 10px'>
            <a href='../nhan-vien/tao-moi' style='margin: 10px'>
                <button class='col-md-1 pull-right btn btn-success'>
                    <i class='glyphicon glyphicon-plus'></i>Tạo mới
                </button>
            </a>
        </div>
        <div class='col-md-12' style='margin: 2px; height: 1px; background: #BDBDBD'></div>
        @foreach($employees as $obj)
            <div class='col-md-12' style="border-radius: 5px; margin: 5px; padding: 5px">
                <div class='col-md-12'>
                    <a href='nhan-vien/delete/{{$obj->maNV}}'>
                        <i style='font-size: 16px; color: red; cursor: pointer' class='glyphicon glyphicon-remove'></i>
                    </a>
                </div>
                <div class='col-md-12' style='5px'></div>
                <div class='col-md-3'>
                    <img style="margin-top: 10px" width="100%" src="https://i.pinimg.com/236x/fa/74/87/fa7487d051ddf0bd80629521b4473a8c--star-trek-uniforms-facebook-profile.jpg">
                </div>
                <div class='col-md-9'>
                    <div class='col-md-9' style='font-size: 12px'>
                        <div class='col-md-6'>
                            <p><b>Họ tên:</b> {{$obj -> hoTen}}</p>
                            <p><b>Mã nhân viên:</b> {{$obj -> maNV}}</p>
                            <p><b>CMND:</b> {{$obj -> CMND}}</p>
                            <p><b>Giới tính:</b> {{$obj -> gioiTinh}}</p>
                        </div>
                        <div class='col-md-6'>
                            <p><b>Ngày sinh:</b> {{$obj -> ngaySinh}}</p>
                            <p><b>Địa chỉ:</b> {{$obj -> diaChi}}</p>
                            <p><b>Lương:</b> {{$obj -> luong}}</p>
                        </div>  
                    </div>
                </div>
                <div class='col-md-12' style='5px'></div>
            </div>
            <div class='col-md-12' style='margin: 2px; height: 1px; background: #BDBDBD'></div>
        @endforeach
    </div>
@stop


