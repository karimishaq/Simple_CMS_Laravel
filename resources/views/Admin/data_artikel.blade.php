@include("template.header")
<div class="row" style="min-height:640px">
	@include("Admin.sidebar")
	<div class='col-sm-9 col-md-9 col-lg-9 col-xs-9' style="background-color:RGBA(0, 0, 255, 0.5);min-height:100%">
		<form method="POST" action="{{{url('Admin/edit')}}}">
			@csrf
			<label>Judul : </label>
			<input type="text" name="kategori">
			<input type="submit" name="submit" value="tambahkan">
		</form>
		<BR />
		<div class="daftar">
			<?PHP $i=0;?>
			@foreach($dataku as $s)
				<div>
				<?PHP $t=$s["Judul"];?>
				@if($i%2==0){{{$t}}}
				@else{{{$t}}}
				@endif
				<BR /> Kategori : {{{$s["Kategori"]}}}<BR />
				
				<a href='{{{url("Admin/edit/".$t)}}}'>edit</a>
				{{{' || '}}}
				<a href='{{{url("Halaman/Artikel/".$t)}}}'>tampilkan</a>
				{{{' || '}}}
				<a href='{{{url("Admin/hapus_artikel/".$t)}}}'>hapus</a>
				</div>
				<?PHP $i++;?>
			@endforeach
		</div>
	</div>
</div>
@include("template.footer")