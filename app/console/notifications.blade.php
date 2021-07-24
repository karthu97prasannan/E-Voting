@extends('layouts.app')

@section('content')
<div class="container home-container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Notifications</div>

                <div class="card-body">
                  @foreach($notifications as $n)
                  <div class="notification my-4 border-bottom">
                    <h4> <b>{{$n->title}}</b> </h4>
                    <p>{{$n->notification}}</p>
                  </div>
                  @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
