@extends('layouts.app')

@section('content')
<div class="container home-container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card mt-5">
                <div class="card-header">{{ $election->name }}</div>
                @if (date('Y-m-d H:i:s') < $election->start)
                <div class="card-body text-center">
                  <h1 class="display-4">  ELECTION NOT STARTED!!</h1>

                </div>
                @elseif (date('Y-m-d H:i:s') > $election->start && date('Y-m-d H:i:s') < $election->end)
                <div class="card-body text-center">
                    @if (\Session::has('success'))
                        <div class="alert alert-success">
                            {!! \Session::get('success') !!}
                        </div>
                    @endif

                    @if ($user === 0 || $user === null)
                    <h4>Candidate List</h4>
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col"></th>
                            <th scope="col">Candidate</th>
                            <th scope="col">Post</th>
                            <th scope="col">Nominee</th>
                            <th scope="col">Supportee</th>
                            <th scope="col"></th>
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
                            <td> <a class="btn btn-success" href="{{route('vote', ['id'=>$rep['candidate_id']])}}">Vote</a> </td>
                          </tr>
                        @endforeach
                      </table>
                    </div>
                    @else
                    <h1>You've casted your vote in {{$election->name}} election.</h1>
                    @endif
                </div>
                @elseif(date('Y-m-d H:i:s') > $election->end)
                <div class="card-body text-center">
                  <h1 class="display-4">ELECTION ENDED!!</h1>
                </div>
                @endif

            </div>
        </div>
    </div>
</div>
@endsection
