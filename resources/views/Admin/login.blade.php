@include('template.header')
<div style="position:relative;margin:auto;padding:8px 2px;width:32%;border:1px solid blue;background:RGBA(127, 155, 127, 0.5);color:red">
	<FORM method="POST" action="Admin">
		@csrf
		<label>Username</label><BR />
		<input class="teks" placeholder="Nama" type="text" name="username" value="" size="50" required /><BR />
		<label>Password</label><BR />
		<input  class="teks" placeholder="Password" type="password" name="password" value="" size="50" required />
		<div><input type="submit" value="Submit" /></div>
	</form>
</div>
@include('template.footer')