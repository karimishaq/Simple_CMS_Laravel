<?php echo $__env->make('template.header', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="row" style="min-height:640px">
	<?php echo $__env->make("Admin.sidebar", \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
	<div class='col-sm-9 col-md-9 col-lg-9 col-xs-9' style="background-color:RGBA(0, 0, 255, 0.5);min-height:100%">
		<form method="POST" action="<?php echo e(url('Admin/tambah_pengguna')); ?>">
			<?php echo csrf_field(); ?>
			<label>Pengguna : </label>
			<input type="text" name="nama">
			<label>Password : </label>
			<input type="text" name="password">
			<label>Level : </label>
			<Select name="level">
				<option value="Admin">Admin</option>
				<option value="Kontributor">Kontributor</option>
			</Select>
			<input type="submit" name="submit" value="tambahkan">
		</form>
		<BR />
		<div class="daftar">
			<?php
				$i=0;
				foreach($dataku as $s){
					echo("<div>");
					if($i%2==0)echo($s["Nama"].":".$s["Password"]);
					else echo($s["Nama"].":".$s["Password"]);
					
					echo("<BR />");
					
					echo("<a href='".url("Admin/hapus_pengguna/".$s["Nama"]));
					echo("'>hapus</a>");
					
					echo("</div>");
					$i++;
				}
			?>
		</div>
	</div>
</div>
<?php echo $__env->make('template.footer', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>