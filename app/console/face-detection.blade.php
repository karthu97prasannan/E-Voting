@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card mt-5">
                <div class="card-header">EVOTING</div>

                <div class="card-body text-center">
                    <h4>Face Detection</h4>
                    <div class="row">

    <div class="col-md-6">

        <div id="my_camera"></div>

        <br/>

        <input type=button value="Take Snapshot" onClick="take_snapshot()">

        <input type="hidden" name="image" class="image-tag">

    </div>

    <div class="col-md-6">

        <div id="results" class="w-75">Your captured image will appear here...</div>

    </div>



</div>

                    <br>
                    <a type="button" class="btn btn-success mt-5" name="button" href="{{route('face-verification', $id)}}">Verify</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script language="JavaScript">

    Webcam.set({

        width: 490,

        height: 390,

        image_format: 'jpeg',

        jpeg_quality: 90

    });



    Webcam.attach( '#my_camera' );



    function take_snapshot() {

        Webcam.snap( function(data_uri) {

            $(".image-tag").val(data_uri);

            document.getElementById('results').innerHTML = '<img class="w-100" src="'+data_uri+'"/>';

        } );

    }

</script>

@endsection
