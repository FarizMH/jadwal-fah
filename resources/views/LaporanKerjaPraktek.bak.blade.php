
<!-- saved from url=(0041)http://localhost:8000/admin/kelas/Print/3 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="Generator" content="Microsoft Word 15 (filtered)">
<style>
<!--
 /* Font Definitions */
 @font-face
  {font-family:"Cambria Math";
  panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
  {font-family:Calibri;
  panose-1:2 15 5 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
  {margin-top:0cm;
  margin-right:0cm;
  margin-bottom:8.0pt;
  margin-left:0cm;
  line-height:107%;
  font-size:11.0pt;
  font-family:"Calibri",sans-serif;}
.MsoChpDefault
  {font-family:"Calibri",sans-serif;}
.MsoPapDefault
  {margin-bottom:8.0pt;
  line-height:107%;}
@page  WordSection1
  {size:1224.0pt 792.0pt;
  margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
  {page:WordSection1;}
@page  WordSection2
  {size:1224.0pt 792.0pt;
  margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection2
  {page:WordSection2;}
@page  WordSection3
  {size:1224.0pt 792.0pt;
  margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection3
  {page:WordSection3;}
-->
</style>

</head>

<body onload="window.print()" lang="EN-US" link="#0563C1" vlink="#954F72" style="tab-interval:36.0pt">

<div class="WordSection1">

<p class="MsoNormal" align="center" style="margin-left:36.0pt;text-align:center;
text-indent:-36.0pt"><b><span lang="EN-ID" style="font-size:12.0pt;line-height:
107%;font-family:&quot;Times New Roman&quot;,serif">JADWAL PERKULIAHAN</span></b></p>

<p class="MsoNormal" align="center" style="margin-left:36.0pt;text-align:center;
text-indent:-36.0pt"><b><span lang="EN-ID" style="font-size:12.0pt;line-height:
107%;font-family:&quot;Times New Roman&quot;,serif">SEMESTER {{$semester}} TAHUN
AKADEMIK {{$tahunakademik}}</span></b></p>

<p class="MsoNormal" align="center" style="margin-left:36.0pt;text-align:center;
text-indent:-36.0pt"><b><span lang="EN-ID" style="font-size:12.0pt;line-height:
107%;font-family:&quot;Times New Roman&quot;,serif">FAKULTAS ADAB DAN HUMANIORA UIN SUNAN GUNUNG
DJATI BANDUNG</span></b></p>

<p class="MsoNormal" align="center" style="margin-left:36.0pt;text-align:center;
text-indent:-36.0pt"><b><span lang="EN-ID" style="font-size:12.0pt;line-height:
107%;font-family:&quot;Times New Roman&quot;,serif">&nbsp;</span></b></p>

</div>

<span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif"><br clear="all" style="page-break-before:auto">
</span>

<div class="WordSection2"></div>

<span lang="EN-ID" style="font-size:11.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif"><br clear="all" style="page-break-before:auto">
</span>

<div class="WordSection3">
<table style="width: 100%">
  <tr>
    <td>
      Semester : {{$_GET['semester']}}
    </td>
    <td style="text-align: right;">
      Jurusan : {{$jurusan->Nama}} <br>
      Tahun : {{$tahunakademik}} <br>
    </td>
  </tr>
</table>
<table style="width: 100%" border="1">
  <tr>
    <th rowspan="2">RG</th>
    <th rowspan="2">JAM</th>
    <th colspan="3"><center>Senin</center></th>
    <th colspan="3"><center>Selasa</center></th>
    <th colspan="3"><center>Rabu</center></th>
    <th colspan="3"><center>Kamis</center></th>
    <th colspan="3"><center>Jum'at</center></th>
    <th colspan="3"><center>Sabtu</center></th>
  </tr>
  <tr>
    <th>Mata Kuliah</th>
    <th>SKS</th>
    <th>Dosen</th>
    <th>Mata Kuliah</th>
    <th>SKS</th>
    <th>Dosen</th>
    <th>Mata Kuliah</th>
    <th>SKS</th>
    <th>Dosen</th>
    <th>Mata Kuliah</th>
    <th>SKS</th>
    <th>Dosen</th>
    <th>Mata Kuliah</th>
    <th>SKS</th>
    <th>Dosen</th>
    <th>Mata Kuliah</th>
    <th>SKS</th>
    <th>Dosen</th>
  </tr>



  @foreach($ruangan as $itemR)
    @foreach($jam as $item)
    <tr>
      <td>{{$itemR->Nama}}</td>
      <td>{{$item->Jam}}</td>
      @foreach($jadwal[$item->id] as $data)
        <td>{{$data->nama_matkul}}</td>
        <td>{{$data->sks}}</td>
        <td>{{$data->nama_dosen}}</td>
      @endforeach
    </tr>
    @endforeach
  @endforeach
</table>

<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-36.0pt"><span lang="EN-ID" style="font-family:&quot;Times New Roman&quot;,serif">&nbsp;</span></p>

<p class="MsoNormal" style="margin-left:29.0cm"><span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Bandung, {{$tanggalsurat}}</span></p>

<p class="MsoNormal" style="margin-left:29.0cm"><span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Dekan,</span></p>

<p class="MsoNormal" style="margin-left:29.0cm"><span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif">&nbsp;</span></p>

<p class="MsoNormal" style="margin-left:29.0cm"><span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif">&nbsp;</span></p>

<p class="MsoNormal" style="margin-left:29.0cm"><span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif">
Dr. H. Setia Gumilar, S.Ag.,M.Si,</span></p>

<p class="MsoNormal" style="margin-left:29.0cm"><span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif">NIP. 197306271998031003</span></p>

<p class="MsoNormal" style="margin-left:758.4pt"><span lang="EN-ID" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif">&nbsp;</span></p>

</div>




</body></html>