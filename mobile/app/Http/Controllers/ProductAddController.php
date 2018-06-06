<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductPool;

use App\Http\Requests;

class ProductAddController extends Controller
{
    public function getProduct(){
        // $show = Show::all();
        // return view('show.index', compact('show'));
        return view('productAdd.index');
    }

    public function addProduct(Request $request){
        $post = new ProductPool;

        $post -> tenSP = $request -> input('tenSP');
        $post -> hangSX = strtolower($request -> input('hangSX'));
        $post -> giaTien = $request -> input('giaTien');
        $post -> kichThuoc = $request -> input('kichThuoc');
        $post -> phanGiai = $request -> input('phanGiai');
        $post -> CPU = $request -> input('CPU');
        $post -> heDieuHanh = $request -> input('heDieuHanh');
        $post -> RAM = $request -> input('RAM');
        $post -> mayAnhChinh = $request -> input('mayAnhChinh');
        $post -> boNhoTrong = $request -> input('boNhoTrong');
        $post -> dungLuongPin = $request -> input('dungLuongPin');
        $post -> link = $request -> input('link');
        $post -> khuyenMai = $request -> input('khuyenMai');

        $post -> save();
        // dd($post);
        return redirect('/')->with('success', 'Post Created');

        // return view('productAdd.index', compact('text'));
    }
}
