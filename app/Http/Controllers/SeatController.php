<?php

namespace App\Http\Controllers;
use App\Seat;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;

class SeatController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($id)
    {
        $seats=DB::select('SELECT place_type, carriage_id from seats where carriage_id='.$id.' group by place_type');


        return view('seat',compact('seats'));
    }

    public function price(Request $request)
    {
        $price=0;
        $seat=Seat::select('place_type','c.class','seats.id')
            ->join('carriages as c', 'seats.carriage_id', 'c.id')
            ->where('c.id',$request->carriage)
            ->where('seats.place_type',$request->place_type)
            ->where('seats.status','!=', 'reserved')
            ->first();

        $id=$seat['id'];

        if(empty($seat))
        {
            $avilable='Bilet jest niedostęny';
            return view('buy',compact('avilable','id'));

        }
        else
        {
            $avilable='Bilet jest dostępny';

        }


        if($seat['place_type']=='Siedzące - przy oknie')
        {
            $price+=25;
        }
        elseif ($seat['place_type']=='Siedzące - w przejściu')
        {
            $price+=15;
        }
        else
        {
            $price+=0;
        }

        if($seat['class']=='Pierwsza')
        {
            $price+=100;
        }
        else
        {
            $price+=50;
        }


        return view('buy',compact('price', 'avilable','id'));
    }

    public function reservation(Request $request)
    {
        $seats = Seat::where('id', $request->id)
            ->update([
                'status' => 'reserved',
            ]);

        return redirect('/home')->with('status', 'Twój bilet został zarezerwowany!');
    }
}
