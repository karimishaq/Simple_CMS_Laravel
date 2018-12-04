<!doctype html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<head>
	<title><?php echo e($judul); ?></title>
	<link href='<?php echo e(asset("asset/CSS/utama.css")); ?>' rel='stylesheet'>
</head>
<body>
	<DIV style="width:99%;min-height:80px;border-radius:10px;padding:4px;background:yellow;margin:2px 0px">
		<H1 style="color:red">Personal Website</H1>
	</DIV>
	<DIV>
		<ul class="menu">
			<li><a href="<?php echo e(url('/')); ?>">Home</a></li>
			<li>
				<a href='#'>Tool</a>
				<ul>
					<?PHP
						$a=array("Photo Editor", "Kamus", "Contoh Text Editor");
						foreach($a as $s):
					?>
					<li><a href="<?php echo e(url('Tool/'.$s)); ?>"><?php echo e($s); ?></a>
					<?PHP endforeach;?> 
				</ul>
			</li>
			<li>
				<a href='#'>Download</a>
				<ul>
					<?PHP
						$a=array("Softwareku", "Emulator");
					?>
					<?php $__currentLoopData = $a; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<li><a href="<?php echo e($s); ?>"><?php echo e($s); ?></a></li>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</ul>
			</li>
			<?PHP
				$a=array("Link Favorit", "Jasa", "Tentang");
			?>
			<?php $__currentLoopData = $a; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<li><a href="<?php echo e($s); ?>"><?php echo e($s); ?></a></li>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</ul>
	</div>
<BR />
<BR />
<div class="container">