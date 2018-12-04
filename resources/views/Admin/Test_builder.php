<?php echo form_open('admin/buat_soal'); ?>
<Label>Soal : </Label><BR />
<textArea name="Soal"></textArea><BR /><BR />
<Label><B>Pilihan</B></Label><BR />
<Label>A : </Label><BR />
<textArea name="A"></textArea>
<Label>Nilai A : </Label>
<input type="text" name="NA" value="0"><BR />

<Label>B : </Label><BR />
<textArea name="B"></textArea>
<Label>Nilai B : </Label>
<input type="text" name="NB" value="0"><BR />

<Label>C : </Label><BR />
<textArea name="C"></textArea>
<Label>Nilai C : </Label>
<input type="text" name="NC" value="0"><BR />

<input name="Submit" type="submit" value="submit">
</form>