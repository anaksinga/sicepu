<?php
include '../../config/config.php';
$id   = encryptor('decrypt', $_POST['id']);
$data = $koneksi->query("SELECT * FROM agama WHERE id_agama = '$id'");
$row  = $data->fetch_array();
?>

<input type="text" name="id_agama" value="<?= $id ?>" hidden>

<div class="form-group">
    <label for="agama" class="col-sm-6 col-form-label">Agama</label>
    <div class="col-sm-12">
        <input type="text" class="form-control" name="agama" id="agama" value="<?= $row['agama'] ?>" required>
    </div>
</div>