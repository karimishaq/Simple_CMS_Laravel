<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Artikel;
use App\Komentar;
use DB;

class Utama extends Controller{
	public function index($halaman="Home", $judul=""){
		if(strtoupper($halaman)=="Utama" || $halaman=="")$halaman="Home";
		$data["judul"] ="Berita";
		$data["isi"] = $halaman;
		$data["dataku"] = Artikel::where("Judul", $judul)->first();
		$data["kategori"]=DB::select("SELECT Kategori From artikel Group By Kategori");
		$data["daftar"]=Artikel::all();
		$data["komentar"] = Komentar::all();
		return view("Utama", $data);
	}
}
