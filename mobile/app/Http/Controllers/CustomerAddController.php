<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;

use App\Http\Requests;

class CustomerAddController extends Controller
{
    public function getDetail($id){
        // $show = Show::all();
        // return view('show.index', compact('show'));
        if($id == 'tao-moi')
            return view('customerPool.index-add', compact('id'));
        else{
            $customers = Customer::where('maKH', $id) -> get();
            return view('customerPool.index', compact('customers'));
        }
    }

    public function addCustomer(Request $request){
        $post = new Customer;

        $post -> hoTen = $request -> input('hoTen');
        $post -> email = $request -> input('email');
        $post -> sdt = $request -> input('sdt');
        $post -> save();
        // dd($post);
        return redirect('../khach-hang')->with('success', 'Post Created');

        // return view('productAdd.index', compact('text'));
    }
}
