<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;

use App\Http\Requests;
use App\Models\Customer;

class CustomerController extends Controller
{
    public function getShow(){
        $customers = Customer::all();
        return view('customerPool.index', compact('customers'));
    }
}
