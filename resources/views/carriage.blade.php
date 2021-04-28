@extends('layouts.app')

@section('content')

    <!DOCTYPE html>
<html lang="en">
<head>
    <title>Table V04</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">



</head>
<body>

<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100">
            <div class="table100 ver5 m-b-110">
                <div class="table100-head">
                    <table>
                        <thead>
                        <tr class="row100 head">
                            <th class="cell100 column3">Numer wagonu </th>
                            <th class="cell100 column3">Klasa</th>
                            <th class="cell100 column3">Dostępne miejsca</th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <div class="table100-body js-pscroll">

                    @foreach($carriage as $carr)
                        <a  href="{{action('SeatController@index',$carr['id'])}}">
                        <table>
                            <tr class="row100 body">
                                    <td class="cell100 column3">
                                        {{$carr['id']}}
                                    </td>
                                    <td class="cell100 column3">
                                        {{$carr['class']}}
                                    </td>
                                    <td class="cell100 column3">
                                        {{$carr['id']}}
                                    </td>
                            </tr>
                        </table>
                        </a>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

@endsection
