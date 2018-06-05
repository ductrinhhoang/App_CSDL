<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bill;
use App\Models\Employee;
use App\Models\Customer;
use App\Models\ProductPool;

use App\Http\Requests;

class BillController extends Controller
{
    public function getShow(){
        $bills = Bill::all() -> reverse();
        return view('billPool.index', compact('bills'));
    }
    public function getDetail($id){
        if($id == 'tao-moi'){
            $employees = Employee::all();
            $customers = Customer::all();
            $products = ProductPool::all();
            return view('billPool.index-detail', compact('id', 'employees', 'customers', 'products'));
        }
        else{
            $bill = Bill::where('maHD', $id)->get();
            $bill = $bill[0];
            return view('billPool.index-detail', compact('id', 'bill'));
        }
    }

    public function addBill(Request $request){
        $post = new Bill;
        $maSP = $request -> input('maSP');

        $product = ProductPool::where('maSP', $maSP)->get();
        $donGia = $product[0]->giaTien;

        $soLuong = $request -> input('soLuong');
        $tongTien = $soLuong * $donGia;

        $post -> maKH = $request -> input('maKH');
        $post -> maSP = $maSP;
        $post -> maNV = $request -> input('maNV');
        $post -> soLuong = $soLuong;
        $post -> tongTien = $tongTien;
        $post -> save();

        return redirect("../hoa-don");
    }
}
