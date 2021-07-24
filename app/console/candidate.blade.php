@extends('layouts.app')

@section('content')
<div class="container home-container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Candidate List</div>

                <div class="card-body text-center">

                  <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th scope="col"></th>
                          <th scope="col">Candidate</th>
                          <th scope="col">Post</th>
                          <th scope="col">Nominee</th>
                          <th scope="col">Supportee</th>

                        </tr>
                      </thead>
                      @foreach($reps as $rep)
                        <tr>
                          <th scope="row"> <img src="{{$rep['photo']}}" width="120" alt=""> </th>
                          <td>{{$rep['candidate']}}
                          </td>
                          <td>{{$rep['post']}}
                          </td>
                          <td>{{$rep['nominee']}}
                          </td>
                          <td>{{$rep['supportee']}}</td>
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
