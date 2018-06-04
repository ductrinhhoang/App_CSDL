<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Show;

use App\Http\Requests;

class ShowController extends Controller
{
    public function getShow(){
        $show = Show::all();
        return view('show.index', compact('show'));
    }
}
