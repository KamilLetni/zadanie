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
                            <th class="cell100 column3">Dostępność</th>
                            <th class="cell100 column3">Cena</th>
                            <th class="cell100 column3"></th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <div class="table100-body js-pscroll">

                        <table>
                            <tr class="row100 body">
                                <td class="cell100 column3">
                                    {{$avilable}}
                                </td>
                                    <td class="cell100 column3">
                                        {{$price ?? ''}}
                                    </td>
                                <td class="cell100 column3">
                                    <form action="/checkout" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <input type="hidden" name="id" value="{{$id}}">
                                    @if(!empty($price))
                                        <input type="submit" class="btn btn-primary" value="Rezerwuj">
                                            @endif
                                    </form>
                                </td>
                            </tr>
                        </table>
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
