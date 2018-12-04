<?php echo $__env->make("template.header", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="row" style="min-height:640px">
	<?php echo $__env->make("Admin.sidebar", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
	<div class='col-sm-9 col-md-9 col-lg-9 col-xs-9' style="background-color:RGBA(0, 0, 255, 0.5);min-height:100%">
		<form method="POST" action="<?php echo e(url('Admin/edit')); ?>">
			<?php echo csrf_field(); ?>
			<label>Judul : </label>
			<input type="text" name="kategori">
			<input type="submit" name="submit" value="tambahkan">
		</form>
		<BR />
		<div class="daftar">
			<?PHP $i=0;?>
			<?php $__currentLoopData = $dataku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<div>
				<?PHP $t=$s["Judul"];?>
				<?php if($i%2==0): ?><?php echo e($t); ?>

				<?php else: ?><?php echo e($t); ?>

				<?php endif; ?>
				<BR /> Kategori : <?php echo e($s["Kategori"]); ?><BR />
				
				<a href='<?php echo e(url("Admin/edit/".$t)); ?>'>edit</a>
				<?php echo e(' || '); ?>

				<a href='<?php echo e(url("Halaman/Artikel/".$t)); ?>'>tampilkan</a>
				<?php echo e(' || '); ?>

				<a href='<?php echo e(url("Admin/hapus_artikel/".$t)); ?>'>hapus</a>
				</div>
				<?PHP $i++;?>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</div>
	</div>
</div>
<?php echo $__env->make("template.footer", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>