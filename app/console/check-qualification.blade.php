@extends('layouts.app')

@section('content')
<div class="container home-container">
    <div class="row justify-content-center align-items-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Check Qualification</div>

                <div class="card-body">
                  <!-- <input type="text" list="students" class="float-right">
                  <datalist id="students">
                    @foreach($students as $student)
                      <option>
                        {{$student->ktu_id}}
                      </option>
                    @endforeach
                  </datalist> -->

                  <table id="example" class="display" class="w-100">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Ktu ID</th>
                            <th>Branch</th>
                            <!-- <th></th> -->
                        </tr>
                    </thead>
                    <tbody>
                      @foreach($students as $student)
                        <tr>
                          <td> <img src="{{$student->photo}}" width="80"  alt=""> </td>
                          <td>{{$student->name}}</td>
                          <td>{{$student->ktu_id}}</td>
                          <td>{{$student->branch}}</td>
                          <!-- <td><a class="btn btn-success" href="{{url('home')}}">Vote</a></td> -->
                        </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
  let table = $('#example');
  $(document).ready(function() {
    table.DataTable(
      {
        "scrollY":        "300px",
          "scrollCollapse": true,
          "columnDefs": [
            {
                "targets": [ 2 ],
                "visible": false,
                "searchable": true
            }
        ]

      }
    );
  } );
</script>
@endsection
