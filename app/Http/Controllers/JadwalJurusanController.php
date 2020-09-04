<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use CRUDBooster;
use DB;

class JadwalJurusanController extends Controller
{
    public function index($id,Request $req){
        $input=$req->all();
        if(empty($input['surattugas']) or empty($input['semester'])){
            $suratTugas=DB::table('surattugas')->get();
            $jurusan=DB::table('jurusan')->get();
            return view('printJadwal')
                ->with('page_title','Print Jadwal')
                ->with('suratTugas',$suratTugas)
                ->with('jurusan',$jurusan);
        }

    	$surattugas=DB::table('surattugas')->find($req->input('surattugas'));
        $jam=DB::table('jam')->get();
        $ruangan=DB::table('kelas')->get();
        $kelas=array();
        foreach ($jam as $item) {
            foreach ($ruangan as $r) {
                $kelas[$item->id][$r->id]['senin']=DB::table('kelas')
                ->select(
                    'kelas.id as id_kelas',
                    'jam.id as id_jam',
                    'dos_mat.Jurusan_id as id_jurusan',
                    'kelas.nama as nama_kelas',
                    'jam.jam as jam',
                    'matkul.Nama as nama_matkul',
                    'dos_mat.sks as sks',
                    'dos_mat.kelas as kelas',
                    'dos_mat.semester as semester',
                    'kelas_jam.hari as hari',
                    'dosen.Nama as nama_dosen'
                )
                ->join('kelas_jam','kelas.id','=','kelas_jam.Id_Kelas')
                ->join('jam','jam.id','=','kelas_jam.Id_Jadwal')
                ->join('dos_mat','dos_mat.id','=','kelas_jam.id_dos_mat')
                ->join('dosen','dosen.id','=','dos_mat.Id_Dosen')
                ->join('matkul','dos_mat.Id_Matkul','=','matkul.id')
                ->where('jam.id',$item->id)
                ->where('kelas.id',$r->id)
                ->where('kelas_jam.hari','senin')
                ->where('dos_mat.semester',$req->input('semester'))
                ->where('dos_mat.Jurusan_id',$id)
                ->orderBy('id_kelas','ASC')
                ->orderBy('id_jam','ASC')
                ->first();
                $kelas[$item->id][$r->id]['selasa']=DB::table('kelas')
                ->select(
                    'kelas.id as id_kelas',
                    'jam.id as id_jam',
                    'dos_mat.Jurusan_id as id_jurusan',
                    'kelas.nama as nama_kelas',
                    'jam.jam as jam',
                    'matkul.Nama as nama_matkul',
                    'dos_mat.sks as sks',
                    'dos_mat.kelas as kelas',
                    'dos_mat.semester as semester',
                    'kelas_jam.hari as hari',
                    'dosen.Nama as nama_dosen'
                )
                ->join('kelas_jam','kelas.id','=','kelas_jam.Id_Kelas')
                ->join('jam','jam.id','=','kelas_jam.Id_Jadwal')
                ->join('dos_mat','dos_mat.id','=','kelas_jam.id_dos_mat')
                ->join('dosen','dosen.id','=','dos_mat.Id_Dosen')
                ->join('matkul','dos_mat.Id_Matkul','=','matkul.id')
                ->where('jam.id',$item->id)
                ->where('kelas.id',$r->id)
                ->where('kelas_jam.hari','selasa')
                ->where('dos_mat.semester',$req->input('semester'))
                ->where('dos_mat.Jurusan_id',$id)
                ->orderBy('id_kelas','ASC')
                ->orderBy('id_jam','ASC')
                ->first();
                $kelas[$item->id][$r->id]['rabu']=DB::table('kelas')
                ->select(
                    'kelas.id as id_kelas',
                    'jam.id as id_jam',
                    'dos_mat.Jurusan_id as id_jurusan',
                    'kelas.nama as nama_kelas',
                    'jam.jam as jam',
                    'matkul.Nama as nama_matkul',
                    'dos_mat.sks as sks',
                    'dos_mat.kelas as kelas',
                    'dos_mat.semester as semester',
                    'kelas_jam.hari as hari',
                    'dosen.Nama as nama_dosen'
                )
                ->join('kelas_jam','kelas.id','=','kelas_jam.Id_Kelas')
                ->join('jam','jam.id','=','kelas_jam.Id_Jadwal')
                ->join('dos_mat','dos_mat.id','=','kelas_jam.id_dos_mat')
                ->join('dosen','dosen.id','=','dos_mat.Id_Dosen')
                ->join('matkul','dos_mat.Id_Matkul','=','matkul.id')
                ->where('jam.id',$item->id)
                ->where('kelas.id',$r->id)
                ->where('kelas_jam.hari','rabu')
                ->where('dos_mat.semester',$req->input('semester'))
                ->where('dos_mat.Jurusan_id',$id)
                ->orderBy('id_kelas','ASC')
                ->orderBy('id_jam','ASC')
                ->first();
                $kelas[$item->id][$r->id]['kamis']=DB::table('kelas')
                ->select(
                    'kelas.id as id_kelas',
                    'jam.id as id_jam',
                    'dos_mat.Jurusan_id as id_jurusan',
                    'kelas.nama as nama_kelas',
                    'jam.jam as jam',
                    'matkul.Nama as nama_matkul',
                    'dos_mat.sks as sks',
                    'dos_mat.kelas as kelas',
                    'dos_mat.semester as semester',
                    'kelas_jam.hari as hari',
                    'dosen.Nama as nama_dosen'
                )
                ->join('kelas_jam','kelas.id','=','kelas_jam.Id_Kelas')
                ->join('jam','jam.id','=','kelas_jam.Id_Jadwal')
                ->join('dos_mat','dos_mat.id','=','kelas_jam.id_dos_mat')
                ->join('dosen','dosen.id','=','dos_mat.Id_Dosen')
                ->join('matkul','dos_mat.Id_Matkul','=','matkul.id')
                ->where('jam.id',$item->id)
                ->where('kelas.id',$r->id)
                ->where('kelas_jam.hari','kamis')
                ->where('dos_mat.semester',$req->input('semester'))
                ->where('dos_mat.Jurusan_id',$id)
                ->orderBy('id_kelas','ASC')
                ->orderBy('id_jam','ASC')
                ->first();
                $kelas[$item->id][$r->id]['jumat']=DB::table('kelas')
                ->select(
                    'kelas.id as id_kelas',
                    'jam.id as id_jam',
                    'dos_mat.Jurusan_id as id_jurusan',
                    'kelas.nama as nama_kelas',
                    'jam.jam as jam',
                    'matkul.Nama as nama_matkul',
                    'dos_mat.sks as sks',
                    'dos_mat.kelas as kelas',
                    'dos_mat.semester as semester',
                    'kelas_jam.hari as hari',
                    'dosen.Nama as nama_dosen'
                )
                ->join('kelas_jam','kelas.id','=','kelas_jam.Id_Kelas')
                ->join('jam','jam.id','=','kelas_jam.Id_Jadwal')
                ->join('dos_mat','dos_mat.id','=','kelas_jam.id_dos_mat')
                ->join('dosen','dosen.id','=','dos_mat.Id_Dosen')
                ->join('matkul','dos_mat.Id_Matkul','=','matkul.id')
                ->where('jam.id',$item->id)
                ->where('kelas.id',$r->id)
                ->where('kelas_jam.hari','jumat')
                ->where('dos_mat.semester',$req->input('semester'))
                ->where('dos_mat.Jurusan_id',$id)
                ->orderBy('id_kelas','ASC')
                ->orderBy('id_jam','ASC')
                ->first();
                $kelas[$item->id][$r->id]['sabtu']=DB::table('kelas')
                ->select(
                    'kelas.id as id_kelas',
                    'jam.id as id_jam',
                    'dos_mat.Jurusan_id as id_jurusan',
                    'kelas.nama as nama_kelas',
                    'jam.jam as jam',
                    'matkul.Nama as nama_matkul',
                    'dos_mat.sks as sks',
                    'dos_mat.kelas as kelas',
                    'dos_mat.semester as semester',
                    'kelas_jam.hari as hari',
                    'dosen.Nama as nama_dosen'
                )
                ->join('kelas_jam','kelas.id','=','kelas_jam.Id_Kelas')
                ->join('jam','jam.id','=','kelas_jam.Id_Jadwal')
                ->join('dos_mat','dos_mat.id','=','kelas_jam.id_dos_mat')
                ->join('dosen','dosen.id','=','dos_mat.Id_Dosen')
                ->join('matkul','dos_mat.Id_Matkul','=','matkul.id')
                ->where('jam.id',$item->id)
                ->where('kelas.id',$r->id)
                ->where('kelas_jam.hari','sabtu')
                ->where('dos_mat.semester',$req->input('semester'))
                ->where('dos_mat.Jurusan_id',$id)
                ->orderBy('id_kelas','ASC')
                ->orderBy('id_jam','ASC')
                ->first();
            }
        }
    	// dd($kelas);
    	// dd($surattugas);
    	$data=array();
    	$data['semester']=$surattugas->Semester;
    	$data['tahunakademik']=$surattugas->tahunakademik;
        $data['ruangan']=DB::table('kelas')->orderBy('nama')->get();
        $data['jurusan']=DB::table('jurusan')->find($id);
        $data['kelas']=$req->input('kelas');
    	$data['jam']=$jam;
    	$data['jadwal']=$kelas;
    	$data['tanggalsurat']=$surattugas->tanggalsurat;
        // dd($kelas);
    	return view('LaporanKerjaPraktek',$data);
    }
}
