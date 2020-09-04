<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin/dosen/Print/{id}',[
    'as' => 'dosen.print',
    'uses' => 'PrintController@index'
]);
Route::post('/admin/dosen/Print/{id}/cetak',[
    'as' => 'dosen.cetak',
    'uses' => 'PrintController@cetak'
]);

Route::get('/admin/jurusan/Print/{id}',[
    'as' => 'jurusan.print',
    'uses' => 'JadwalJurusanController@index'
]);

// Route::post('/admin/kelas/Print/{id}/cetak',[
//     'as' => 'kelas.cetak',
//     'uses' => 'JadwalKelasController@cetak'
// ]);