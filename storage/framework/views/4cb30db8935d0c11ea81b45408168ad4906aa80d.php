<div class="kiri">
	<div>
		<?PHP //echo"<span style='font-weight:bold;display:block'>Nama : $nama</span>"?>
		<?PHP //echo"<span style='font-weight:bold;display:block'>Level : $level</span>"?>
	</div>
	<ul class="daftar_menu">
		<li>
			<a href="index.php/admin/index/Artikel" class="iconmenu"> Artikel</a>
		</li>
		<?php if(strtoupper($level)=="ADMIN"): ?>
		<li>
			<a href="index.php/admin/index/Pengguna" class="icongroup"> Pengguna</a>
		</li>
		<?php endif; ?>
		<li>
			<a href="index.php/admin/Test_builder" class="icontest"> Test</a>
		</li>
		<li>
			<a href="index.php/admin/index/Kategori" class="iconkategori"> Kategori</a>
		</li>
	</ul>
	
	<form method="POST" action="Admin/logout">
		<?php echo csrf_field(); ?>
		<input type="submit" name="submit" value="logout">
	</form>
</div>