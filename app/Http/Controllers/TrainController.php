<?php

namespace App\Http\Controllers;

use App\Train;
use Illuminate\Http\Request;

class TrainController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $train=Train::select('id','name')->get()->toArray();

        return view('train',compact('train'));
    }
}
