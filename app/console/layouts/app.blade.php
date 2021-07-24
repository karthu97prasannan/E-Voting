<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js" charset="utf-8"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.25/webcam.min.js"></script>
    <script src="https://kit.fontawesome.com/d08ca39f6f.js" crossorigin="anonymous"></script>
<!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style media="screen">
      .dropdown-toggle::after {
        display: none !important;
      }
      a.dropdown-item {
        display: inline-block;
        font-weight: 400;
        color: #212529;
        text-align: center;
        vertical-align: middle;
        -webkit-user-select: none;
           -moz-user-select: none;
            -ms-user-select: none;
                user-select: none;
        background-color: transparent;
        border: 1px solid transparent;
        padding: 0.375rem 0.75rem;
        font-size: 0.9rem;
        line-height: 1.6;
        border-radius: 0.25rem;
        transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        color: #343a40;
        border-color: #343a40;
        width: 50%;
      }

      a.dropdown-item:hover {
        color: #343a40;
        border-color: #343a40;
      }
      a.dropdown-item:focus, a.dropdown-item.focus {
        box-shadow: 0 0 0 0.2rem rgba(52, 58, 64, 0.5);
      }
      a.dropdown-item.disabled, a.dropdown-item:disabled {
        color: #343a40;
        background-color: transparent;
      }
      a.dropdown-item:not(:disabled):not(.disabled):active, a.dropdown-item:not(:disabled):not(.disabled).active, .show > a.dropdown-item.dropdown-toggle {
        color: #343a40;
        border-color: #343a40;
      }
      a.dropdown-item:not(:disabled):not(.disabled):active:focus, a.dropdown-item:not(:disabled):not(.disabled).active:focus, .show > a.dropdown-item.dropdown-toggle:focus {
        box-shadow: 0 0 0 0.2rem rgba(52, 58, 64, 0.5);
      }

      .avatar {
        border-radius: 50%
      }
    </style>
</head>
<body>
    <div id="app" class="h-100">
        <nav class="navbar navbar-expand-md navbar-transparent bg-transparent">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'EVoting') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <img src="{{ asset('images/icon/left-align.png') }}" width="20" alt="">
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        <li class="nav-item d-flex flex-row justify-content-center align-items-center">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Home') }}</a>
                        </li>
                        <li class="nav-item d-flex flex-row justify-content-center align-items-center">
                            <a class="nav-link" href="{{ url('notifications') }}">{{ __('Notifications') }}</a>
                        </li>
                        <li class="nav-item d-flex flex-row justify-content-center align-items-center">
                            <a class="nav-link" href="{{ url('results') }}">{{ __('Results') }}</a>
                        </li>
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item d-flex flex-row justify-content-center align-items-center">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif
<!--
                            @if (Route::has('register'))
                                <li class="nav-item d-flex flex-row justify-content-center align-items-center">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif -->
                        @else
                            <li class="nav-item d-flex flex-row justify-content-center align-items-center dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                  <?php $student = \DB::table('students')->where('email_id', Auth::user()->email)->get(); ?>

                                  @foreach($student as $s)


                                    <img class="avatar" src="{{$s->photo}}" height="35" width="35" alt="">

                                  @endforeach

                                </a>

                                <div class="dropdown-menu dropdown-menu-right text-center px-2 py-4 shadow-lg" style="width:300px" aria-labelledby="navbarDropdown">
                                  @foreach($student as $s)

                                    <!-- @if(file_exists($s->photo)) -->
                                    <img class="avatar" src="{{$s->photo}}" height="80" width="80" alt="">
                                    <!-- @else
                                      <canvas id="canvas2" width="80" height="80"></canvas>
                                    @endif -->
                                  @endforeach
                                    <h6 id="username" class="text-uppercase mt-3"> <b>{{Auth::user()->name}}</b> </h6>
                                    <p>{{Auth::user()->email}}</p>
                                    <br>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4 justify-content-center align-items-center">
            @yield('content')
        </main>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Firebase App (the core Firebase SDK) is always required and must be listed first -->
    <script src="https://www.gstatic.com/firebasejs/6.0.2/firebase.js"></script>
    <script type="text/javascript">
    function getRandomColor() {
      var letters = 'BCDEF'.split('');
                var color = '#';
                for (var i = 0; i < 6; i++ ) {
                    color += letters[Math.floor(Math.random() * letters.length)];
                }
                return color;
    }

    let randomColor = getRandomColor();
    const canvas = document.getElementById('canvas');
    const context = canvas.getContext('2d');
    const centerX = canvas.width / 2;
    const centerY = canvas.height / 2;
    const radius = canvas.width / 2;
    context.beginPath();
    context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
    context.fillStyle = randomColor;
    context.fill();
    context.font = "20px Arial";
    context.fillStyle = 'black';
    context.fillText($('#username').text().charAt(1),10,25);
    // context.lineWidth = 1;
    // context.strokeStyle = rgba(0,0,0,0.1);
    // context.stroke();

    const canvas2 = document.getElementById('canvas2');
    console.log(canvas2);
    const context2 = canvas2.getContext('2d');
    const centerX2 = canvas2.width / 2;
    const centerY2 = canvas2.height / 2;
    const radius2 = canvas2.width / 2;
    context2.beginPath();
    context2.arc(centerX2, centerY2, radius2, 0, 2 * Math.PI, false);
    context2.fillStyle = randomColor;
    context2.fill();
    context2.font = "50px Arial";
    context2.fillStyle = 'black';
    context2.fillText($('#username').text().charAt(1),23,58);
    // context2.lineWidth = 1;
    context2.strokeStyle = '#00000000';
    context2.stroke();

    </script>
</body>
</html>
