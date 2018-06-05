@extends('productPool.template')

@section('main')
    <div class='col-md-12' style="padding: 0; border-radius: 5px; background: whitesmoke;margin-bottom: 10px">
        <div class='col-md-12' style='margin: 10px'>
            <a href='../hoa-don/tao-moi' style='margin: 10px'>
                <button class='col-md-1 pull-right btn btn-success'>
                    <i class='glyphicon glyphicon-plus'></i>Tạo mới
                </button>
            </a>
        </div>
        <table class='table'>
            <thead>
                <tr>
                    <th>Mã Hoá đơn</th>
                    <th>Nhân viên</th>
                    <th>Khách hàng</th>
                    <th>Sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Thành tiền</th>
                    <th>Ngày nhập</th>
                </tr>
            </thead>
            <tbody>
                @if(count($bills)==0)
                    <tr>
                        <td cols='6'>No Data</td>
                    </tr>
                @else
                    @foreach($bills as $bill)
                        <tr>
                            <td>
                                <a href='../hoa-don/{{$bill->maHD}}'>{{$bill -> maHD}}</a>
                            </td>
                            <td>
                                <a href='../nhan-vien/{{$bill->maNV}}'>{{$bill -> maNV}}</a>
                            </td>
                            <td>
                                <a href='../khach-hang/{{$bill->maKH}}'>{{$bill -> maKH}}</a>
                            </td>
                            <td>
                                <a href='../chi-tiet-san-pham/{{$bill->maSP}}'>{{$bill -> maSP}}</a>
                            </td>
                            <td>{{$bill -> soLuong}}</td>
                            <td>{{$bill -> tongTien}}</td>
                            <td>{{$bill -> created_at}}</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
    </div>
@stop


