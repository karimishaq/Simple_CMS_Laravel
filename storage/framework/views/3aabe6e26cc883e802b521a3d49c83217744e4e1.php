<!doctype html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
    <head>
        <title><?php echo e($judul); ?></title>
		<link href='<?php echo e(asset("asset/CSS/utama.css")); ?>' rel='stylesheet'>
    </head>
	<body>
		<?php echo $__env->make('template.Header', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<?php echo $__env->make($isi, \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<?php echo $__env->make('template.Footer', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
	</body>
</html>