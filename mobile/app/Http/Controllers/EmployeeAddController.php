<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;

use App\Http\Requests;

class EmployeeAddController extends Controller
{
    public function getDetailEmployee($id){
        // $show = Show::all();
        // return view('show.index', compact('show'));
        if($id == 'tao-moi')   
            return view('employeePool.index-add');
        else{
            $employees = Employee::where('maNV', $id) -> get();
            return view('employeePool.index', compact('employees'));
        }
    }

    public function addEmployee(Request $request){
        $post = new Employee;

        $post -> CMND = $request -> input('CMND');
        $post -> luong = $request -> input('luong');
        $post -> hoTen = $request -> input('hoTen');
        $post -> gioiTinh = $request -> input('gioiTinh');
        $post -> ngaySinh = $request -> input('ngaySinh');
        $post -> diaChi = $request -> input('diaChi');
        $post -> save();
        // dd($post);
        return redirect('../nhan-vien')->with('success', 'Post Created');

        // return view('productAdd.index', compact('text'));
    }
}
