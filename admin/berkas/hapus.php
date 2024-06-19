<?php
include '../../config/config.php';
include_once "../../config/auth-admin.php";

$id   = encryptor('decrypt', $_GET['id']);

$hapus = $koneksi->query("DELETE FROM berkas WHERE id_berkas = '$id'");

if ($hapus) {
    $_SESSION['pesan'] = "Data Berkas Dihapus";
    echo "<script>window.location.replace('../berkas/');</script>";
}
