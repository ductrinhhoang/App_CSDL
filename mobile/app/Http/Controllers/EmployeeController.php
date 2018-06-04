<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;

use App\Http\Requests;

class EmployeeController extends Controller
{
    public function getShow(){
        $employees = Employee::all();
        return view('employeePool.index', compact('employees'));
    }
    public function delete($maNV){
        $employees = Employee::where('maNV', $maNV);
        $employees->delete();

        return redirect('../nhan-vien');
    }
}
