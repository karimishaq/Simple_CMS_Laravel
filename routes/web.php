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

Route::get('/', 'Utama@index');
Route::get('/Admin', 'Admin@index');
Route::post('/Admin', 'Admin@login');
Route::post('/Admin/simpan', 'Admin@simpan');
Route::post('/Admin/tambah_pengguna', 'Admin@tambah_pengguna');
Route::post('/Admin/tambah_kategori', 'Admin@tambah_kategori');
Route::post('/Admin/tambah_komentar', 'Admin@tambah_komentar');
Route::post('/Admin/edit', 'Admin@edit');
Route::get('/Admin/edit/{judul}', 'Admin@edit');
Route::get('/Admin/hapus_kategori', 'Admin@hapus_kategori');
Route::get('/Admin/hapus_artikel/{judul}', 'Admin@hapus_artikel');
Route::get('/Admin/hapus_pengguna/{nama}', 'Admin@hapus_pengguna');
Route::get('/Halaman/{halaman}', 'Utama@index');
Route::get('/Halaman/{halaman}/{judul}', 'Utama@index');
Route::get('/Admin/index/{isi}', 'Admin@index');
Route::post('/Admin/logout', 'Admin@logout');