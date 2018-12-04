<div class="row" style="border:1px solid blue;background:yellow">
	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" id="komentar">
		<h2>Komentar : </h2>
		@foreach($komentar as $s)
			<div>
				<h3>{{{$s->Nama.":"}}}</h3>
				<p>{{{$s->isi}}}</p>
			</div>
		@endforeach
	</div>
</div>
<div class="row">
	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
		<h2>Komentar anda : </h2>
		<form method="POST" action="{{{url('Admin/tambah_komentar')}}}">
			@csrf
			<input type="text" name="nama" placeholder="Nama Anda" required>
			<TextArea style="width:100%" name="isi" placeholder="Komentar Anda" required></TextArea>
			<input type="hidden" name="halaman" value="{{{'/'}}}">
			<input type="submit" value="kirim" name="kirim">
		</form>
	</div>
</div>