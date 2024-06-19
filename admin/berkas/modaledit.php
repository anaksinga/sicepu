<?php
include '../../config/config.php';
$id   = encryptor('decrypt', $_POST['id']);
$data = $koneksi->query("SELECT * FROM berkas WHERE id_berkas = '$id'");
$row  = $data->fetch_array();
?>

<input type="text" name="id_berkas" value="<?= $id ?>" hidden>

<div class="form-group">
    <label for="berkas" class="col-sm-6 col-form-label">berkas</label>
    <div class="col-sm-12">
        <input type="text" class="form-control" name="berkas" id="berkas" value="<?= $row['berkas'] ?>" required>
    </div>
</div>