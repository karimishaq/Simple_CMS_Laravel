<?php echo $__env->make("template.header", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make("admin.sidebar", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="kanan">
	<h2><?php echo e($judul); ?></h2>
	<form method="POST" action="<?php echo e(url("index.php/admin/edit")); ?>">
		<label>Judul : </label>
		<input type="text" name="judul">
		<input type="hidden" name="kategori" value="">
		<input type="submit" name="submit" value="tambahkan">
	</form>
	<BR />
	<div class="daftar">
	
	<?PHP
	/*
		<?php
			$i=0;
			foreach($dataku as $s){
				echo("<div>");
				$t=$s["Judul"];
				if($i%2==0)echo($t);
				else echo($t);
				echo("<BR /> Kategori : ".$s["Kategori"]."<BR />");
				
				echo("<a href='".base_url()."index.php/Admin/edit/".$t);
				echo("'>edit</a>");
				
				echo(" || <a href='".base_url()."index.php/Artikel/index/".$t);
				echo("'>tampilkan</a>");
				
				echo(" || <a href='".base_url()."index.php/Admin/hapus_artikel/".$t);
				echo("'>hapus</a>");
				
				echo("</div>");
				$i++;
			}
		?>
	*/
	?>
	</div>
</div>
<?php echo $__env->make("template.footer", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>