<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['edit'])) {
    $id_pengajuan = $_POST['id_pengajuan'];
    $pengajuan    = $_POST['pengajuan'];

    $submit = $koneksi->query("UPDATE pengajuan SET pengajuan = '$pengajuan' WHERE id_pengajuan = '$id_pengajuan'");
    if ($submit) {
        $_SESSION['pesan'] = "Data Pengajuan Diubah";
        echo "<script>window.location.replace('../pengajuan/');</script>";
    }
}
