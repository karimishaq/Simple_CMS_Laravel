<div class="row">
	<div class="col-sm-12 col-md-9 col-lg-9 col-xs-9" style="min-height:640px;background-color:RGB(0, 128, 63);">
		<div class="isi">
			<?PHP
				if($dataku){
					echo("<H1>".$dataku->Judul."</H1>");
					echo($dataku->Isi);
				}
			?>
		</div>
	</div>
	<div class="col-sm-12 col-md-3 col-lg-3 col-xs-3" style="min-height:640px;background-color:orange;">
		<H2>Artikel</H2>
		<ul class="my_tree">
			<?PHP foreach($kategori as $s):?>
			<li><span class="caret"><?PHP echo($s->Kategori);?></span>
				<ul class="nested">
				<?php
					$i=0;
					foreach($daftar as $t){
						if($t['Kategori']==$s->Kategori){
							echo("<li>");
							echo("<a href='");
							echo(url("Halaman/Artikel/".$t['Judul']));
							echo("'>".$t['Judul']."</a>");
							
							echo("</li>\n");
							$i++;
						}
					}
				?>
				</ul>
			</li>
			<?PHP endforeach;?>
		<script>
			$(".caret").click(function(e){
				let target=this.parentElement.querySelector("ul");
				if(!target.classList.contains("tampil")){
					$(".transformasi").removeClass("transformasi");
					$(".tampil").removeClass("tampil");
				}
				target.classList.toggle("tampil");
				this.classList.toggle("transformasi");
			});
		</script>
	</div>
</div>