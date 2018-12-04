<div class='row' style='background-color:silver'>
	<div class='col-sm-12 col-md-12 col-lg-12 col-xs-12'>
		<ul class="menu">
			<li><a href="<?php echo e(url('/')); ?>">Home</a></li>
			<li>
				<a href='#'>Download</a>
				<ul>
					<?PHP
						$a=array("Softwareku", "Emulator");
					?>
					<?php $__currentLoopData = $a; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<li><a href="<?php echo e(url('/Halaman/'.$s)); ?>"><?php echo e($s); ?></a></li>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</ul>
			</li>
			<?PHP
				$a=array("Artikel", "Link Favorit", "Jasa", "Tentang");
			?>
			<?php $__currentLoopData = $a; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<li><a href="<?php echo e(url('/Halaman/'.$s)); ?>"><?php echo e($s); ?></a></li>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</ul>
	</div>
</div>