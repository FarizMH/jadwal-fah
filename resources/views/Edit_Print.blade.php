<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <form method='post' action='{{route('dosen.cetak',['id'=>$id])}}'>
      @csrf
    <div class='panel-body'>
      <div class='form-group'>
        <label>Surat Tugas</label>
        <select required class='form-control' name='surat_tugas'>
          @foreach($suratTugas as $item)
            <option value="{{$item->id}}">{{$item->Semester}} - {{$item->tanggalrapat}}</option>
          @endforeach
        </select>
      </div>
      <hr>
      @foreach($matakuliah as $item)         
      <div class='form-group'>
        <label>Pendamping Matakuliah {{$item->Nama}} Kelas {{$item->kelas}}</label>
        <input type='text' name='pendamping[{{$item->id}}]' class='form-control'/>
      </div>
      @endforeach         
      <!-- etc .... -->
    </div>
    <div class='panel-footer'>
      <input type='submit' class='btn btn-primary' value='Print'/>
    </div>
    </form>
  </div>
@endsection