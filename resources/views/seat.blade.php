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
                            <th class="cell100 column3">Numer</th>
                            <th class="cell100 column3">Typ miejsca</th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <div class="table100-body js-pscroll">

                    @foreach($seats as $seat)
                        <table>
                            <tr class="row100 body">
                                    <td class="cell100 column1">
                                        {{$seat->place_type}}
                                    </td>
                                <td class="cell100 column1">
                                    <form action="/price" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <input type="hidden" name="carriage" value="{{$seat->carriage_id}}">
                                        <input type="hidden" name="place_type" value="{{$seat->place_type}}">

                                        <input type="submit" class="btn btn-primary" value="Wybierz">

                                    </form>
                                </td>

                            </tr>



                        </table>

                    @endforeach

                </div>
            </div>

            <div id="result">
            </div>

        </div>
    </div>
</div>

</body>
</html>

@endsection
