
@extends('master')

@section('main')

<main id="main">

    <table class="table">
        <thead>
            <th style="text-align:center">Name</th>
            <th style="text-align:center">Email</th>
            <th style="text-align:center">Phone</th>
            <th style="text-align:center">Timing to call</th>
        </thead>
        <tbody>
            @foreach($contact as $list)
            <tr>
                <td style="text-align:center">{{$list->name}}</td>
                <td style="text-align:center">{{$list->email}}</td>
                <td style="text-align:center">{{$list->phone}}</td>
                <td style="text-align:center">{{$list->time}}</td>
            </tr>
            @endforeach
        </tbody>   
    </table>
</main> 

@endsection