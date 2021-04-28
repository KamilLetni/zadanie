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
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <div class="container-table100">
        <div class="wrap-table100">
            <div class="table100 ver5 m-b-110">
                <div class="table100-head">
                    <table>
                        <thead>
                        <tr class="row100 head">
                            <th class="cell100 column1">Dostępne pociągi</th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <div class="table100-body js-pscroll">

                    @foreach($train as $tra)
                            <a  href="{{action('CarriageController@index',$tra['id'])}}">
                                <table>

                            <tr class="row100 body">
                                <td class="cell100 column1">
                                    {{$tra['name']}}
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
