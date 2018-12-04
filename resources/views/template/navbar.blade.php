<div class='row' style='background-color:silver'>
	<div class='col-sm-12 col-md-12 col-lg-12 col-xs-12'>
		<ul class="menu">
			<li><a href="{{{url('/')}}}">Home</a></li>
			<li>
				<a href='#'>Download</a>
				<ul>
					<?PHP
						$a=array("Softwareku", "Emulator");
					?>
					@foreach($a as $s)
					<li><a href="{{{url('/Halaman/'.$s)}}}">{{{$s}}}</a></li>
					@endforeach
				</ul>
			</li>
			<?PHP
				$a=array("Artikel", "Link Favorit", "Jasa", "Tentang");
			?>
			@foreach($a as $s)
			<li><a href="{{{url('/Halaman/'.$s)}}}">{{{$s}}}</a></li>
			@endforeach
		</ul>
	</div>
</div>