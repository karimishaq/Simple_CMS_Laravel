<div class="row" style="border:1px solid blue;background:yellow">
	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" id="komentar">
		<h2>Komentar : </h2>
		<?php $__currentLoopData = $komentar; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div>
				<h3><?php echo e($s->Nama.":"); ?></h3>
				<p><?php echo e($s->isi); ?></p>
			</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	</div>
</div>
<div class="row">
	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
		<h2>Komentar anda : </h2>
		<form method="POST" action="<?php echo e(url('Admin/tambah_komentar')); ?>">
			<?php echo csrf_field(); ?>
			<input type="text" name="nama" placeholder="Nama Anda" required>
			<TextArea style="width:100%" name="isi" placeholder="Komentar Anda" required></TextArea>
			<input type="hidden" name="halaman" value="<?php echo e('/'); ?>">
			<input type="submit" value="kirim" name="kirim">
		</form>
	</div>
</div>