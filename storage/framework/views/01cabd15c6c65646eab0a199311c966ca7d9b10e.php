<?php echo $__env->make("template.header", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div>
	<b>
	<SPAN>Judul : <?php echo e($judul); ?></SPAN><BR />
	</b>
	<b>
	<SPAN>Penulis : <?php echo e($nama); ?></SPAN><BR />
	</b>
	<Label>Kategori : </Label>
	<Select id="tmp_kategori">
		<?PHP $a=explode(";", $daftar_kategori);?>
		<?php $__currentLoopData = $a; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<option value="<?php echo e($s); ?>"
			<?php if($s==$kategori): ?><?php echo e('selected'); ?>

			<?php endif; ?>
			><?php echo e($s); ?></option>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	</Select>
	<BR />
</div>
<div id="tombolku" style="min-width:50%;height:10%;padding:2px;border:2px solid blue;background:RGBA(127, 127, 127, 0.3);">
	<Button onclick="ubah_tulisan('bold')"><b>B</b></Button>
	<Button onclick="ubah_tulisan('italic')"><i>I</i></Button>
	<Button onclick="ubah_tulisan('underline')"><u>U</u></Button>
	<Button onclick="ubah_tulisan('strikeThrough')"><s>S</s></button>
	<Button onclick="ubah_tulisan('superscript')">X <sup>Sup</sup></Button>
	<Button onclick="ubah_tulisan('subscript')">X <sub>Sub</sub></Button>
	<Button onclick="ubah_tulisan('insertOrderedList')">Ol</Button>
	<Button onclick="ubah_tulisan('insertUnorderedList')">Ul</Button>
	<Button onclick="tampilkan_link()">link</button>
	<Button onclick="ubah_tulisan('unlink')">Unlink</Button>
	<Button onclick="tampilkan_gambar()">Gambar</button>
	<Button onclick="ubah_tulisan('removeFormat')">Remove Format</Button>
	<BR />
	<Button onclick="ubah_tulisan('justifyLeft')">Left</Button>
	<Button onclick="ubah_tulisan('justifyCenter')">Center</Button>
	<Button onclick="ubah_tulisan('justifyRight')">Right</Button>
	<Button onclick="ubah_tulisan('justifyFull')">Justify</Button>
	<Button onclick="ubah_tulisan('undo')">Undo</Button>
	<Button onclick="ubah_tulisan('redo')">Redo</Button>
	<SPAN>Huruf : </SPAN>
	<SELECT onchange="ubah_ukuran(this.value)" oninput="ubah_ukuran(this.value)">
		<OPTION value="1"selected>Sangat Kecil</OPTION>
		<OPTION value="2">Kecil</OPTION>
		<OPTION value="3">Normal</OPTION>
		<OPTION value="4">Cukup Besar</OPTION>
		<OPTION value="5">Besar</OPTION>
		<OPTION value="6">Sangat Besar</OPTION>
		<OPTION value="7">Super Besar</OPTION>
	</SELECT>
	<SPAN>Warna : </SPAN>
	<div class="dropdown_menu">
		<button onclick="myFunction(event, this)" id="warna" class="tombol">warna</button>
		<div class="dropdown-content">
			<?PHP
				$a=array("black", "white", "grey", "red", "green", "blue", "yellow", "magenta", "orange", "pink", "purple", "cyan", "violet", "indigo", "lime");
				foreach($a as $s):
			?>
			<div onclick="ubah_warna('<?PHP echo($s);?>')" class="kotak_warna" style="background-color:<?PHP echo($s);?>"></div>
			<?PHP endforeach;?>
		</div>
	</div>
	
	<SPAN>Background : </SPAN>
	<div class="dropdown_menu">
		<button onclick="myFunction(event, this)" id="latar" class="tombol">warna</button>
		<div class="dropdown-content">
			<?PHP
				$a=array("black", "white", "grey", "red", "green", "blue", "yellow", "magenta", "orange", "pink", "purple", "cyan", "violet", "indigo", "lime");
				foreach($a as $s):
			?>
			<div onclick="ubah_warna('<?PHP echo($s);?>', true)" class="kotak_warna" style="background-color:<?PHP echo($s);?>"></div>
			<?PHP endforeach;?>
		</div>
	</div>
</div>

<div contenteditable="true" id="editor" style="min-width:50%;padding:2px;height:400px;border:2px solid blue;overflow:auto">
	<?PHP
		echo($isi);
	?>
</div>

<form name="simpan" method="POST" action="<?php echo e(url('Admin/simpan')); ?>">
	<?php echo csrf_field(); ?>
	<input type="hidden" name="dataku" id="dataku" value="">
	<input type="hidden" name="judul" id="judul" value="<?PHP echo($judul);?>">
	<input type="hidden" name="penulis" id="penulis" value="<?PHP echo($nama);?>">
	<input type="hidden" name="kategori" id="kategori" value="<?PHP echo($kategori);?>">
</form>

<BR />
<button id="save" value="save" onclick="dapatkan_data()">Simpan</button>
<BR />

<div class="penghalang" id="penghalang_menu">
	<div id="menu">
		<div style="padding:2px">
			<input id="link" type="text" />
			<button onclick="lanjut()">OK</button>
			<button onclick='document.getElementById("penghalang_menu").style.display="none";'>Batal</button>
		</div>
	</div>
</div>

<div class="penghalang"  id="penghalang_gambar">
	<div id="gambar">
		<div style="padding:2px">
			<input type="file" name="images" id="fileku">
			<button onclick="kirim('<?php echo e(url('/')); ?>')">Upload</button>
		</div>
		<div style="padding:2px" id="daftar">
			<button onclick='document.getElementById("penghalang_gambar").style.display="none";'>Batal</button>
			<BR />
			<?PHP
				$i=0;
				$a=scandir("gambarku");
				foreach($a as $s){
					$sfl=url("gambarku/".$s);
					if($s!="." && $s!=".."){
						echo("<div class='kolom'><IMG class='thumbnail' src='".$sfl."' onclick=tambah_gambar('".$sfl."')></div>");
					}
					$i++;
				}
				clearstatcache();
			?>
		</div>
	</div>
</div>
<SCRIPT>
	var seleksi;
	if(window.FileReader){
		var fr=new FileReader();
	}
	
	function dapatkan_data(){
		document.getElementById("kategori").value=document.getElementById("tmp_kategori").value;
		document.getElementById("dataku").value=document.getElementById("editor").innerHTML;
		if(dataku.value!=""){
			simpan.submit();
		}
		return 0;
	}
	
	function ubah_tulisan(s){
		document.execCommand(s);
	}
	
	function ubah_ukuran(s){
		var sel=window.getSelection();
		document.execCommand("fontSize", false, s);
	}
	
	function ubah_warna(s, background){
		var sel=window.getSelection();
		if(sel){
			sel.removeAllRanges();
		}
		if(seleksi){
			sel.addRange(seleksi);
		}
			
		if(background){
			document.getElementById("latar").innerHTML=s;
			document.execCommand("backcolor", false, s);
		}else{
			document.getElementById("warna").innerHTML=s;
			document.execCommand("forecolor", false, s);
		}
	}
	
	function tampilkan_gambar(){
		document.getElementById("penghalang_gambar").style.display="block";
	}
	
	function tampilkan_link(){
		sel= window.getSelection();
		if (sel.getRangeAt && sel.rangeCount) {
			seleksi=sel.getRangeAt(0);
		}
		document.getElementById("penghalang_menu").style.display="block";
	}
	
	function tambah_gambar(s){
		document.execCommand("insertImage", false, s);
		document.getElementById("penghalang_gambar").style.display="none";
	}
	
	function lanjut(){
		var s=document.getElementById("link").value;
		var sel=window.getSelection();
		sel.removeAllRanges();
		sel.addRange(seleksi);
		
		document.execCommand("createLink", false, s);
		document.getElementById("penghalang_menu").style.display="none";
		document.getElementById("link").innerHTML="";
	}
	
	//tombol
	function myFunction(e, t){
		sel= window.getSelection();
		if (sel.getRangeAt && sel.rangeCount) {
			seleksi=sel.getRangeAt(0);
		}
		
		t.parentElement.children[1].classList.toggle("tampilkan");
	}
	
	document.onclick=function(e){
		var menu=document.getElementsByClassName("dropdown-content");
		if(e.target.className!="tombol"){
			for(var x=0;x<menu.length;x++){
				if(menu[x].classList.contains("tampilkan"))menu[x].classList.remove("tampilkan");
			}
		}
	}
	
	window.onload=function(){
		document.getElementById("editor").focus();
	}
	
	function kirim(s){
		var file=document.getElementById("fileku").files[0];
		formdata = false;
		if (window.FormData) {
			formdata = new FormData();
			koneksi=new XMLHttpRequest();
			
			formdata.append("images[]", file);
			
			koneksi.open("POST", s+"upload.php");
			koneksi.send(formdata);
			koneksi.onloadend=function(e){
				if(window.FileReader){
					fr.onloadend=function(e){
						var daftar=document.getElementById("daftar");
						var source=e.target.result;
						img  = document.createElement("img");
						data = document.createElement("div");
						
						img.src = source;
						img.className="thumbnail";
						data.className="kolom";
						data.appendChild(img);
						daftar.appendChild(data);
					}
					fr.readAsDataURL(file);
				}
			}
		}
	}
</SCRIPT>
<?php echo $__env->make("template.footer", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>