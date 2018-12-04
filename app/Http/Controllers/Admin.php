<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pengguna;
use App\Artikel;
use App\Pengaturan;
use App\Komentar;

class Admin extends Controller{
    //
	public function index($halaman="", Request $request){
		if($request->session()->get("Nama")){
			$data["judul"]="Admin";
			$data["nama"]=$request->session()->get("Nama");
			$data["level"]=$request->session()->get("Level");
			switch($halaman){
				case "Pengguna":
					$data["dataku"]=Pengguna::all();
					$s="Admin/data_pengguna";
					break;
				case "Artikel":
					$data["dataku"]=Artikel::where('Penulis', $data["nama"])->get();
					$s="Admin/data_artikel";
					break;
				case "Kategori":
					$hasil=Pengaturan::where('Nama', 'Kategori')->first();
					$data["dataku"]=explode(";", $hasil->Nilai);
					$s="Admin/data_kategori";
					break;
				default:
					$data["dataku"]=Artikel::where('Penulis', $data["nama"])->get();
					$s="Admin/data_artikel";
					break;
			}
			return view($s, $data);
		}else{
			$data["judul"]="Login";
			return view("Admin/login", $data);
		}
		return "Gagal";
	}
	
	public function edit($judul="", Request $request){
		$hasil=Artikel::where("Judul", $judul)->first();
		if(!$hasil){
			$data["judul"]=$request->input("judul");
			$data["nama"]=$request->session()->get("Nama");
			$data["isi"]="Ketik yang anda pikirkan di sini";
		}else{
			$data["judul"]=$hasil->Judul;
			$data["nama"]=$hasil->Penulis;
			$data["isi"]=$hasil->Isi;
		}
		$data["kategori"]="Lainnya";
		$hasil=Pengaturan::where("Nama", "Kategori")->first();
		$data["daftar_kategori"]=$hasil->Nilai;
		return view("Admin/editor", $data);
	}
	
	public function simpan(Request $request){
		$hasil=Artikel::where("Judul", $request->input("judul"))->first();
		if(!$hasil){
			$artikel=new Artikel();
		}else{
			$artikel=$hasil;
		}
		$artikel->Judul=$request->input("judul");
		$artikel->Penulis=$request->input("penulis");
		$artikel->Isi=$request->input("dataku");
		$artikel->Kategori=$request->input("kategori");
		$artikel->save();
		return redirect("Admin");
	}
	
	public function tambah_pengguna(Request $request){
		$hasil=Pengguna::where("Nama", $request->input("nama"))->first();
		if(!$hasil){
			$pengguna=new Pengguna();
		}else{
			$pengguna=$hasil;
		}
		$pengguna->Nama=$request->input("nama");
		$pengguna->level=$request->input("level");
		$pengguna->Password=hash("md5", $request->input("password"));
		$pengguna->save();
		return redirect("Admin/index/Pengguna");
	}
	
	public function tambah_kategori(Request $request){
		$hasil=Pengaturan::where("Nama", "Kategori")->first();
		if(!$hasil){
			$kategori=new Pengaturan();
		}else{
			$kategori=$hasil;
		}
		$kategori->Nama="Kategori";
		$kategori->Nilai=$kategori->Nilai.";".$request->input("kategori");
		$kategori->save();
		return redirect("Admin/index/Kategori");
	}
	
	public function tambah_komentar(Request $request){
		$data=new Komentar();
		$data->Nama=$request->input("nama");
		$data->isi=$request->input("isi");
		$data->save();
		return redirect($request->input("halaman"));
	}
	
	public function hapus_artikel($judul){
		Artikel::where("Judul", $judul)->delete();
		return redirect("Admin");
	}
	
	public function hapus_pengguna($nama){
		Pengguna::where("Nama", $nama)->delete();
		return redirect("Admin/index/Pengguna");
	}
	
	public function hapus_kategori(Request $request){
		$hasil=Pengaturan::where("Nama", "Kategori")->first();
		$a=explode(";", $hasil->Nilai);
		$kategori=$request->input("kategori");
		$nilai="";
		foreach($a as $x){
			if($x!=$kategori){
				if($nilai!="")$nilai.=";";
				$nilai.=$x;
			}
		}
		if(!$hasil){
			$pengaturan=new Pengaturan();
		}else{
			$pengaturan=$hasil;
		}
		$pengaturan->Nama="Kategori";
		$pengaturan->Nilai=$nilai
;
		$pengaturan->save();
		return redirect("Admin/index/Kategori");
	}
	
	public function logout(Request $request){
		$request->session()->flush();
		$data["judul"]="Login";
		return redirect("Admin");
	}
	
	public function login(Request $request){
		$hasil=Pengguna::where("nama", $request->input("username"))->where("password", hash("md5", $request->input("password")))->count();
		if($hasil>=1){
			$hasil=Pengguna::where("Nama", $request->input("username"))->first();
			$request->session()->put("Nama", $hasil->Nama);
			$request->session()->put("Level", $hasil->level);
			return redirect("Admin");
		}
		return "Gagal";
	}
}
