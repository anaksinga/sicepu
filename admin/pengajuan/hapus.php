<?php
include '../../config/config.php';
include_once "../../config/auth-admin.php";

$id   = encryptor('decrypt', $_GET['id']);

$hapus = $koneksi->query("DELETE FROM pengajuan WHERE id_pengajuan = '$id'");

if ($hapus) {
    $_SESSION['pesan'] = "Data pengajuan Dihapus";
    echo "<script>window.location.replace('../pengajuan/');</script>";
}
