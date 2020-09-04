<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use CRUDBooster;
use DB;

class PrintController extends Controller
{
    public function index($id){
	  $matakuliah=DB::table('dos_mat')
	  	->select(['dos_mat.*','matkul.Nama'])
	  	->join('matkul','matkul.id','=','dos_mat.id_Matkul')
	  	->where('id_Dosen',$id)
	  	->get();
	  $kelas=array();
	  foreach ($matakuliah as $item) {
		  $kelas[]=DB::table('kelas_jam')
		  	->select(['kelas.*','jam.*'])
		  	->join('kelas','kelas.id','=','kelas_jam.id_Kelas')
		  	->join('jam','jam.id','=','kelas_jam.id_Jadwal')
		  	->where('id_dos_mat',$item->id)
		  	->get();
	  }
	  $suratTugas=DB::table('surattugas')->get();
	  $data = [];
	  $data['suratTugas'] = $suratTugas;
	  $data['page_title'] = 'Print';
	  $data['matakuliah'] = $matakuliah;
	  $data['kelas'] = $kelas;
	  $data['id'] = $id;
	  // dd($matakuliah);
	  
	  // $this->cbView('custom_add_view',$data);
	  return view('Edit_Print',$data);
    }
    public function cetak(Request $request, $id){
	  $matakuliah=DB::table('dos_mat')
	  	->select(['dos_mat.*','matkul.Nama','jurusan.Nama as Nama_jurusan','jurusan.singkatan'])
	  	->join('matkul','matkul.id','=','dos_mat.id_Matkul')
	  	->join('jurusan','jurusan.id','=','dos_mat.Jurusan_id')
	  	->where('id_Dosen',$id)
	  	->get();
	  $kelas=array();
	  foreach ($matakuliah as $item) {
		  $kelas[$item->id]=DB::table('kelas_jam')
		  	->select(['kelas.*','jam.*','kelas_jam.Hari as Hari'])
		  	->join('kelas','kelas.id','=','kelas_jam.id_Kelas')
		  	->join('jam','jam.id','=','kelas_jam.id_Jadwal')
		  	->where('id_dos_mat',$item->id)
		  	->get();
	  }

	  $nama_dosen=DB::table('dosen')->find($id)->Nama;
	  $data = [];
	  $data['i'] = 1;
	  $data['smt'] = [
	  	1=>'I',
	  	2=>'II',
	  	3=>'III',
	  	4=>'IV',
	  	5=>'V',
	  	6=>'VI',
	  	7=>'VII',
	  	8=>'VIII',
	  ];
	  $suratTugas=DB::table('surattugas')->find($request->input('surat_tugas'));
	  $data['nama_dosen'] = $nama_dosen;
	  $data['pendamping'] = $request->input('pendamping');
	  $data['nomor_surat'] = "B-".$suratTugas->nomersrt."/Un.05/III.1/PP.00.9/".$suratTugas->bulan."/".$suratTugas->tahun;
	  $data['semester'] = $suratTugas->Semester;
	  $data['tahun_akademik'] = " ".$suratTugas->tahunakademik;
	  $data['tanggal_rapat'] = " ".$suratTugas->tanggalrapat;
	  $data['kegiatan_kuliah'] = " ".$suratTugas->waktukuliah." sampai dengan tanggal ".$suratTugas->akhirkuliah;
	  $data['tanggal_surat'] = " ".$suratTugas->tanggalsurat;
	  $data['nama_dekan'] = 'Dr. H. Setia Gumilar, S.Ag.,M.Si,';
	  $data['nip_dekan'] = '197306271 99803 1 003'; 
	  $data['matakuliah'] = $matakuliah;
	  $data['kelas'] = $kelas;
	  $data['id'] = $id;
	  // dd($data['matakuliah']);
	  return view('cetak',$data);
    }
}
