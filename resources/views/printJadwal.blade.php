<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <form method='get' action='{{url()->current()}}'>
    <div class='panel-body'>
      <div class='form-group'>
        <label>Semester</label>
        <select required class='form-control' name='semester'>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
        </select>
      </div>

      <div class='form-group'>
        <label>Surat Tugas</label>
        <select required class='form-control' name='surattugas'>
          @foreach($suratTugas as $item)
            <option value="{{$item->id}}">{{$item->Semester}} - {{$item->tanggalrapat}}</option>
          @endforeach
        </select>
      </div>
      <!-- etc .... -->
    </div>
    <div class='panel-footer'>
      <input type='submit' class='btn btn-primary' value='Print'/>
    </div>
    </form>
  </div>
@endsection