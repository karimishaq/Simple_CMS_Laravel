<div class="kanan">
	<h2><?PHP echo($judul);?></h2>
	<div class="daftar">
		<?php
			$i=0;
			foreach($dataku as $s){
				echo("<div>");
				if($i%2==0)echo($s["Judul"]."<BR />");
				else echo($s["Judul"]."<BR />");
				
				echo("<a href='".base_url()."index.php/Admin/edit/".$s["Judul"]);
				echo("'>edit</a>");
				
				echo(" || <a href='".base_url()."index.php/Artikel/index/".$s["Judul"]);
				echo("'>tampilkan</a>");
				
				echo(" || <a href='".base_url()."index.php/Admin/hapus_artikel/".$s["Judul"]);
				echo("'>hapus</a>");
				
				echo("</div>");
				$i++;
			}
		?>
	</div>
</div>