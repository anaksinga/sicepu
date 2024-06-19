<?php
include '../../config/config.php';
include_once "../../config/auth-admin.php";

$id   = encryptor('decrypt', $_GET['id']);

$hapus = $koneksi->query("DELETE FROM agama WHERE id_agama = '$id'");

if ($hapus) {
    $_SESSION['pesan'] = "Data agama Usaha Dihapus";
    echo "<script>window.location.replace('../kegiatan-usaha/');</script>";
}
