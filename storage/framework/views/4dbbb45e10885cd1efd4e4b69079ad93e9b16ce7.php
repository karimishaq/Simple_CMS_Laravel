<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<head>
	<title><?php echo e($judul); ?></title>
	<link href='<?php echo e(asset("Asset/CSS/utama.css")); ?>' rel='stylesheet'>
	<link href='<?php echo e(asset("Asset/CSS/menu.css")); ?>' rel='stylesheet'>
	<link href='<?php echo e(asset("Asset/bootstrap/css/bootstrap.min.css")); ?>' rel='stylesheet'>
	<script src='<?php echo e(asset("Asset/jquery.min.js")); ?>'></script>
</head>
<body>
	<div class="container-fluid">