@extends('layouts.app')

@section('content')
<div class="container home-container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Results</div>

                <div class="card-body">
                  @if($t > $election->end)
                    @foreach($reps as $key => $rep)
                      <table class="table table-striped">

                          <tr class="mt-5">
                            <td colspan="2" class="text-center"> <b>{{$posts[$key]->post}}</b> </td>
                          </tr>
                            <tr>
                              <th>Candidate</th>
                              <th>Votes</th>
                            </tr>
                            @foreach($rep as $k1 => $r)
                            @if($k1 == 0)
                            <tr style="background-color:green" class="text-white">
                              <td>{{$r['candidate']}}</td>
                              @if($r['votes'] == null)
                                <td>0</td>
                              @else
                                <td>{{$r['votes']}}</td>
                              @endif
                            </tr>
                            @else
                            <tr>
                              <td>{{$r['candidate']}}</td>
                              @if($r['votes'] == null)
                                <td>0</td>
                              @else
                                <td>{{$r['votes']}}</td>
                              @endif
                            </tr>
                            @endif
                            @endforeach

                        </tbody>
                    @endforeach
                  @else
                    <h1 class="display-4 text-center">ELECTION IS NOT CLOSED!!</h1>
                  @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
