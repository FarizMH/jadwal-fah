<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Jadwal</title>
</head>
<body>
<script src="http://127.0.0.1:8000/vendor/crudbooster/assets/adminlte/plugins/jQuery/jquery-2.2.3.min.js"></script>
  <center>
    <h3>JADWAL KULIAH JURUSAN BAHASA DAN SASTRA ARAB (BSA) </h3>
    <p >FAKULTAS ADAB DAN HUMANIORA UIN SUNAN GUNUNG DJATI BANDUNG </p>
    <p>TAHUN AKADEMIK {{$tahunakademik}} (SEMESTER {{$semester}})</p>
    <table height="64" border="1">
      <tr>
        <td width="30" rowspan="2">Jam</td>
        <td height="57" rowspan="2">Ruang</td>
        <td width="97" rowspan="2">JUR/SMT/KLS</td>
        <th height="32" colspan="2"> Senin</th>
        <td width="97" rowspan="2">JUR/SMT/KLS</td>
        <th height="32" colspan="2"> Selasa</th>
      </tr>
        
      <tr>
        <td width="200">Mata Kuliah</td>
        <td width="150">Dosen</td>
        <td width="200">Mata Kuliah</td>
        <td width="150">Dosen</td>
      </tr>
        <?php $i=1 ?>
        @foreach($jam as $item)
          @foreach($ruangan as $itemR)
          <tr id="senin_selasa-{{$i}}" style="">
            <td>{{$item->Jam}}</td>
            <td>{{$itemR->Nama}}</td>
            <?php $x=1 ?>
            @foreach($jadwal[$item->id][$itemR->id] as $hari=>$data)
            @if($hari == "senin" or $hari == "selasa")
              <td> 
                @if($data->kelas)
                {{$jurusan->kode}}/{{$_GET['semester']}}/{{$data->kelas}}
                @else
                  @if($x++ >= 2)
                    <script type="text/javascript">
                      $("#senin_selasa-{{$i}}").hide();
                    </script>
                  @endif
                @endif
              </td>          
              <td>{{$data->nama_matkul}}</td>
              <td>{{$data->nama_dosen}}</td>
            @endif
          @endforeach
          <?php $i++ ?>
          </tr>
          @endforeach
        @endforeach
    </table>

    <p style="page-break-before: always;"></p>

    <h3>JADWAL KULIAH JURUSAN BAHASA DAN SASTRA ARAB (BSA) </h3>
    <p >FAKULTAS ADAB DAN HUMANIORA UIN SUNAN GUNUNG DJATI BANDUNG </p>
    <p>TAHUN AKADEMIK {{$tahunakademik}} (SEMESTER {{$semester}})</p>
    <table height="64" border="1">
      <tr>
        <td width="30" rowspan="2">Jam</td>
        <td height="57" rowspan="2">Ruang</td>
        <td width="97" rowspan="2">JUR/SMT/KLS</td>
        <th height="32" colspan="2"> Rabu</th>
        <td width="97" rowspan="2">JUR/SMT/KLS</td>
        <th height="32" colspan="2"> kamis</th>
      </tr>
        
      <tr>
        <td width="200">Mata Kuliah</td>
        <td width="150">Dosen</td>
        <td width="200">Mata Kuliah</td>
        <td width="150">Dosen</td>
      </tr>
        <?php $i=1 ?>
        @foreach($jam as $item)
          @foreach($ruangan as $itemR)
          <tr id="rabu_kamis-{{$i}}" style="">
            <td>{{$item->Jam}}</td>
            <td>{{$itemR->Nama}}</td>
            <?php $x=1 ?>
            @foreach($jadwal[$item->id][$itemR->id] as $hari=>$data)
            @if($hari == "rabu" or $hari == "kamis")
              <td> 
                @if($data->kelas)
                {{$jurusan->kode}}/{{$_GET['semester']}}/{{$data->kelas}}
                @else
                  @if($x++ >= 2)
                    <script type="text/javascript">
                      $("#rabu_kamis-{{$i}}").hide();
                    </script>
                  @endif
                @endif
              </td>          
              <td>{{$data->nama_matkul}}</td>
              <td>{{$data->nama_dosen}}</td>
            @endif
            @endforeach
            <?php $i++ ?>
        </tr>
          @endforeach
        @endforeach   
    </table>

    <p style="page-break-before: always;"></p>

    <h3>JADWAL KULIAH JURUSAN BAHASA DAN SASTRA ARAB (BSA) </h3>
    <p >FAKULTAS ADAB DAN HUMANIORA UIN SUNAN GUNUNG DJATI BANDUNG </p>
    <p>TAHUN AKADEMIK {{$tahunakademik}} (SEMESTER {{$semester}})</p>
    <table height="64" border="1">
      <tr>
        <td width="30" rowspan="2">Jam</td>
        <td height="57" rowspan="2">Ruang</td>
        <td width="97" rowspan="2">JUR/SMT/KLS</td>
        <th height="32" colspan="2"> Jum'at</th>
        <td width="97" rowspan="2">JUR/SMT/KLS</td>
        <th height="32" colspan="2"> Sabtu</th>
      </tr>
        
      <tr>
        <td width="200">Mata Kuliah</td>
        <td width="150">Dosen</td>
        <td width="200">Mata Kuliah</td>
        <td width="150">Dosen</td>
      </tr>
        <?php $i=1 ?>
        @foreach($jam as $item)
          @foreach($ruangan as $itemR)
          <tr id="jumat_sabtu-{{$i}}" style="">
            <td>{{$item->Jam}}</td>
            <td>{{$itemR->Nama}}</td>
            <?php $x=1 ?>
            @foreach($jadwal[$item->id][$itemR->id] as $hari=>$data)
            @if($hari == "jumat" or $hari == "sabtu")
              <td> 
                @if($data->kelas)
                {{$jurusan->kode}}/{{$_GET['semester']}}/{{$data->kelas}}
                @else
                  @if($x++ >= 2)
                    <script type="text/javascript">
                      $("#jumat_sabtu-{{$i}}").hide();
                    </script>
                  @endif
                @endif
              </td>          
              <td>{{$data->nama_matkul}}</td>
              <td>{{$data->nama_dosen}}</td>
            @endif
            @endforeach
            <?php $i++ ?>
        </tr>
          @endforeach
        @endforeach   
    </table>
  
  </center>
  <br>
  <br>
  
<table  border="0" align="right">
      <tr>  
      <td> Bandung, {{$tanggalsurat}}</td>
      </tr>
      <tr>  
      <td height="23"> Dekan </td>
      </tr>
      <td height="74"></td>
      <tr>  
      <td> Dr. H. Setia Gumilar, S.Ag., M.Si. </td>
      </tr>
      <tr>
      <td> NIP. 197306271998031003 </td>
      </tr>
</table>
<script type="text/javascript">
  $(document).ready(function(){
    window.print();
  });
</script>
</body>
</html>
