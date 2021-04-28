<?php

namespace App\Http\Controllers;

use App\Carriage;
use Illuminate\Http\Request;

class CarriageController extends Controller
{
    public function __construct()
    {
//        $this->middleware('auth');
    }

    public function index($id)
    {
        $carriage=Carriage::select('class','id')->where('train_id',$id)->get()->toArray();

        return view('carriage',compact('carriage'));
    }
}
