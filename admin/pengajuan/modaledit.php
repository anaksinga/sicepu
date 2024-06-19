<?php
include '../../config/config.php';
$id   = encryptor('decrypt', $_POST['id']);
$data = $koneksi->query("SELECT * FROM pengajuan WHERE id_pengajuan = '$id'");
$row  = $data->fetch_array();
?>

<input type="text" name="id_pengajuan" value="<?= $id ?>" hidden>

<div class="form-group">
    <label for="pengajuan" class="col-sm-4 col-form-label">Nama pengajuan</label>
    <div class="col-sm-12">
        <input type="text" class="form-control" name="pengajuan" id="pengajuan" value="<?= $row['pengajuan'] ?>" required>
    </div>
</div>