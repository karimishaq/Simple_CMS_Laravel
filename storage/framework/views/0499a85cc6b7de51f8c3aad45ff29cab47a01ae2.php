<div class='col-sm-3 col-md-3 col-lg-3 col-xs-3 admin' style="background-color:orange;min-height:100%">
	<div>
		<span style='font-weight:bold;display:block'><?php echo e('Nama :'.$nama); ?></span>
		<span style='font-weight:bold;display:block'><?php echo e('Level :'.$level); ?></span>
	</div>
	<ul class="daftar_menu">
		<li>
			<a href="<?php echo e(url('Admin/index/Artikel')); ?>" class="iconmenu"> Artikel</a>
		</li>
		<?php if(strtoupper($level)=="ADMIN"): ?>
		<li>
			<a href="<?php echo e(url('Admin/index/Pengguna')); ?>" class="icongroup"> Pengguna</a>
		</li>
		<?php endif; ?>
		<li>
			<a href="<?php echo e(url('Admin/index/Kategori')); ?>" class="iconkategori"> Kategori</a>
		</li>
	</ul>
	
	<form method="POST" action="<?php echo e(url("Admin/logout")); ?>">
		<?php echo csrf_field(); ?>
		<input type="submit" name="submit" value="logout">
	</form>
</div>