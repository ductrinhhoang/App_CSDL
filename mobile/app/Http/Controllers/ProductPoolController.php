<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductPool;

use App\Http\Requests;

class ProductPoolController extends Controller
{
    
    public function getProductPool(){
        $products = ProductPool::all();
        $manufactures = ['SAMSUNG', 'APPLE', 'HUAWEI', 'OPPO'];
        return view('productPool.index', compact('products', 'manufactures'));
    }

    public function getDetail($id){
        $products = ProductPool::where('maSP', $id) -> get();
        $manufactures = ['SAMSUNG', 'APPLE', 'HUAWEI', 'OPPO'];
        return view('productPool.index', compact('products', 'manufactures'));
    }

    public function delete($maSP){
        $products = ProductPool::where('maSP', $maSP);
        $products->delete();

        return redirect('/');
    }

    public function filterProduct($hangSX){
        $hangSX = strtolower($hangSX);
        $products = ProductPool::where('hangSX', $hangSX)->get();
        $manufactures = ['SAMSUNG', 'APPLE', 'HUAWEI', 'OPPO'];

        return view('productPool.index', compact('products', 'manufactures'));
    }
}
