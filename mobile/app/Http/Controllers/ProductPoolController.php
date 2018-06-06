<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductPool;

use App\Http\Requests;

class ProductPoolController extends Controller
{
    
    public function getProductPool(){
        $manuCurr = "nothing";
        $products = ProductPool::all() -> reverse();
        $manufactures = ProductPool::select('hangSX') -> distinct() -> get();
        return view('productPool.index', compact('products', 'manufactures', 'manuCurr'));
    }

    public function getDetail($id){
        $manuCurr = "nothing";
        $products = ProductPool::where('maSP', $id) -> get();
        $manufactures = ProductPool::select('hangSX') -> distinct() -> get();
        return view('productPool.index', compact('products', 'manufactures', 'manuCurr'));
    }

    public function delete($maSP){
        $products = ProductPool::where('maSP', $maSP);
        $products->delete();

        return redirect('/');
    }

    public function filterProduct($hangSX){
        $manuCurr = strtolower($hangSX);
        $products = ProductPool::where('hangSX', $manuCurr)->get();
        $manufactures = ProductPool::select('hangSX') -> distinct() -> get();

        return view('productPool.index', compact('products', 'manufactures', 'manuCurr'));
    }
}
