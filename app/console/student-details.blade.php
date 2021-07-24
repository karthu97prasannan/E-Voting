@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card mt-5">
                <div class="card-header">{{ $election->name }}</div>

                <div class="card-body text-center">
                    <h4>Your Details</h4>
                    <div class="table-responsive">
                      <table class="table table-striped">

                        @foreach($student as $s)
                        <!-- <tr>
                          <td colspan="2"> <img src="{{asset('$s->photo')}}" width="50" height="50" alt=""> </td>
                        </tr> -->
                        <tr>
                          <th scope="row" class="border-right">Name</th>
                          <td>{{$s->name}}</td>
                        </tr>
                        <tr>
                          <th scope="row" class="border-right">KTU ID</th>
                          <td>{{$s->ktu_id}}</td>
                        </tr>
                        <tr>
                          <th scope="row" class="border-right">Email ID</th>
                          <td>{{$s->email_id}}</td>
                        </tr>
                        <tr>
                          <th scope="row" class="border-right">Mobile No</th>
                          <td>{{$s->mobile_no}}</td>
                        </tr>
                        <tr>
                          <th scope="row" class="border-right">Address</th>
                          <td>{{$s->address}}</td>
                        </tr>
                        <tr>
                          <td colspan="2">
                            <a class="btn btn-success" href="{{route('verify', $candidate)}}">Verify Details</a>
                          </td>
                        </tr>
                        @endforeach
                      </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
