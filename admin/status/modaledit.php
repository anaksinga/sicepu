<?php
include '../../config/config.php';
$id   = encryptor('decrypt', $_POST['id']);
$data = $koneksi->query("SELECT * FROM status_nikah WHERE id_status = '$id'");
$row  = $data->fetch_array();
?>

<input type="text" name="id_status" value="<?= $id ?>" hidden>

<div class="form-group">
    <label for="status_nikah" class="col-sm-6 col-form-label">Status Nikah</label>
    <div class="col-sm-12">
        <input type="text" class="form-control" name="status_nikah" id="status_nikah" value="<?= $row['status_nikah'] ?>" required>
    </div>
</div>