@include("template.header")
<div class="row" style="min-height:640px">
	@include("Admin.sidebar")
	<div class='col-sm-9 col-md-9 col-lg-9 col-xs-9' style="background-color:RGBA(0, 0, 255, 0.5);min-height:100%">
		<form method="POST" action="{{{url('Admin/tambah_kategori/')}}}">
			@csrf
			<label>Nama : </label>
			<input type="text" name="kategori">
			<input type="submit" name="submit" value="tambahkan">
		</form>
		<BR />
		<div class="daftar">
			<?php
				$i=0;
				foreach($dataku as $s){
					echo("<div>");
					if($i%2==0)echo($s);
					else echo($s);
					
					echo("<BR />");
					$s=urlencode($s);
					echo("<a href='".url('Admin/hapus_kategori/?kategori='.$s));
					echo("'>hapus</a>");
					echo("</div>");
					$i++;
				}
			?>
		</div>
	</div>
</div>
@include('template.footer')