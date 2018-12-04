<div class='col-sm-3 col-md-3 col-lg-3 col-xs-3 admin' style="background-color:orange;min-height:100%">
	<div>
		<span style='font-weight:bold;display:block'>{{{'Nama :'.$nama}}}</span>
		<span style='font-weight:bold;display:block'>{{{'Level :'.$level}}}</span>
	</div>
	<ul class="daftar_menu">
		<li>
			<a href="{{{url('Admin/index/Artikel')}}}" class="iconmenu"> Artikel</a>
		</li>
		@if(strtoupper($level)=="ADMIN")
		<li>
			<a href="{{{url('Admin/index/Pengguna')}}}" class="icongroup"> Pengguna</a>
		</li>
		@endif
		<li>
			<a href="{{{url('Admin/index/Kategori')}}}" class="iconkategori"> Kategori</a>
		</li>
	</ul>
	
	<form method="POST" action="{{{url("Admin/logout")}}}">
		@csrf
		<input type="submit" name="submit" value="logout">
	</form>
</div>