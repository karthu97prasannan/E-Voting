@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card mt-5">
                <div class="card-header">EVOTING</div>

                <div class="card-body text-center">
                    <h4>Verify Details</h4>
                    <form class="form mt-5" action="{{ route('verify-details')}}" method="post">
                      @csrf
                      <input type="hidden" name="mailotpc" value="{{$mailotp}}">
                      <input type="hidden" name="smsotpc" value="{{$smsotp}}">
                      <input type="hidden" name="candidate" value="{{$id}}">
                      @if (\Session::has('wrong'))
                          <div class="alert alert-danger">
                              {!! \Session::get('wrong') !!}
                          </div>
                      @endif
                      <div class="form-group row">
                          <label for="email-otp" class="col-md-4 col-form-label text-md-right">{{ __('Email OTP') }}</label>

                          <div class="col-md-6">
                            <input id="email-otp" type="text" class="form-control @error('mailotp') is-invalid @enderror" name="mailotp" required autocomplete="otp">
                          </div>
                      </div>

                      <div class="form-group row">
                          <label for="smsotp" class="col-md-4 col-form-label text-md-right">{{ __('SMS OTP') }}</label>

                          <div class="col-md-6">
                            <input id="smsotp" type="text" class="form-control @error('smsotp') is-invalid @enderror" name="smsotp" required autocomplete="otp">
                          </div>
                      </div>


                      <button type="submit" class="btn btn-success">
                          {{ __('Verify') }}
                      </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
