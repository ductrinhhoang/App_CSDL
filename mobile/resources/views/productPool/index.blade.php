@extends('productPool.template')

@section('main')
    <div class='col-md-12' style="padding: 0; border-radius: 5px; background: whitesmoke;margin-bottom: 10px">        
        <div class='col-md-12' style='margin: 10px'>
            <div class='col-md-1'><b>Lọc theo hãng: </b></div>
            @foreach($manufactures as $manufacture)
                <a href='../san-pham/{{$manufacture->hangSX}}'>
                    @if($manufacture->hangSX != $manuCurr)
                        <button class='col-md-1 btn btn-default' style='margin: 5px'>{{strtoupper($manufacture->hangSX)}}</button>
                    @else
                        <button class='col-md-1 btn btn-primary' style='margin: 5px'>{{strtoupper($manufacture->hangSX)}}</button>
                    @endif
                </a>
            @endforeach
            <a href='/tao-moi' style='margin: 10px'>
                <button class='col-md-1 pull-right btn btn-success'>
                    <i class='glyphicon glyphicon-plus'></i>Tạo mới
                </button>
            </a>
        </div>
        <div class='col-md-12' style='margin: 2px; height: 1px; background: #BDBDBD'></div>
        @foreach($products as $product)
            <div class='col-md-12' style="border-radius: 5px; margin: 5px; padding: 5px">
                <div class='col-md-12'>
                    <a href='san-pham/delete/{{$product->maSP}}'>
                        <i style='font-size: 16px; color: red; cursor: pointer' class='glyphicon glyphicon-remove'></i>
                    </a>
                </div>
                <div class='col-md-12' style='5px'></div>
                <div class='col-md-3'>
                    <img style="margin-top: 10px" width="100%" src="{{$product->link}}">
                </div>
                <div class='col-md-9'>
                    <div class='col-md-9' style='font-size: 12px'>
                        <h4 style='color: skyblue'><b>{{$product->tenSP}}</b></h4>
                        <div class='col-md-6'>
                            <p><b>Màn hình:</b> {{$product -> kichThuoc}}</p>
                            <p><b>Pin:</b> {{$product -> dungLuongPin}}</p>
                            <p><b>CPU:</b> {{$product -> CPU}}</p>
                            <p><b>Phân giải:</b> {{$product -> phanGiai}}</p>
                        </div>
                        <div class='col-md-6'>
                            <p><b>Camera:</b> {{$product -> mayAnhChinh}}</p>
                            <p><b>Ram:</b> {{$product -> RAM}}</p>
                            <p><b>Hệ điều hành:</b> {{$product -> heDieuHanh}}</p>
                            <p><b>Bộ nhớ trong:</b> {{$product -> boNhoTrong}}</p>
                        </div>  
                    </div>
                    <div class='col-md-3'>
                        <h3 class='pull-right' style="height: 5px"><b>{{$product->giaTien}} </b>đ</h3>
                    </div>
                    @if(!is_null($product -> khuyenMai))
                        <div class='col-md-10' style='border: grey 1px dotted; border-radius: 5px;margin: 25px;margin-top:0'>
                            <p style='font-size: 15px'><b>Khuyến mãi:</b></p>
                            {{$product -> khuyenMai}}
                        </div>
                    @endif
                </div>
                <div class='col-md-12' style='5px'></div>
            </div>
            <div class='col-md-12' style='margin: 2px; height: 1px; background: #BDBDBD'></div>
        @endforeach
    </div>
@stop


