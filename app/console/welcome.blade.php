@extends('layouts.welcome')

@section('content')
  <div class="fluid-container h-100 row justify-content-center align-items-center">
    <div class="col-md-12 content">
      @if (date('Y-m-d H:i:s') < $election->start)
      <h1 id="h1" date1="{{$election->start}}" date2="{{date('Y-m-d H:i:s') }}">ELECTION PORTAL</h1>
      @elseif (date('Y-m-d H:i:s') > $election->start && date('Y-m-d H:i:s') < $election->end)
      <h1 id="h-2">ELECTION PORTAL</h1>
      @else
      <h1 id="h-3">ELECTION PORTAL</h1>
      @endif
      <!-- <h4>College of Engineering Attingal</h4> -->
      <nav class="navbar navbar-expand-md navbar-transparent bg-transparent position-relative w-nav">
          <div class="container">
            <ul class="navbar-nav mx-auto w-100 justify-content-center">
              <li class="nav-item"><a href="{{ url('/results') }}" class="nav-link text-lt"><u>Results</u></a></li>
              <li class="nav-item"><a href="{{ url('/info') }}" class="nav-link text-lt"><u>Election Information</u></a></li>

              @if (Route::has('login'))
                      <li class="nav-item">
                        @auth
                            <a href="{{ url('/home') }}" class="nav-link text-lt"><u>Home</u></a>
                        @else
                            <a href="{{ route('login') }}" class="nav-link text-lt"><u>Login</u></a>
                        @endauth
                      </li>
              @endif

              <li class="nav-item"><a href="{{ url('/qualification-check') }}" class="nav-link text-lt"><u>Check Qualification</u></a></li>

              <li class="nav-item"><a href="{{ url('/candidate-list') }}" class="nav-link text-lt"><u>Candidates</u></a></li>
            </ul>
          </div>
        </nav>
    </div>
  </div>
  <script type="text/javascript">
    $(window).on('load',function() {
      let date1 = $('#h1').attr('date1');
      let date2 = $('#h1').attr('date2');
    });
  </script>
@endsection
