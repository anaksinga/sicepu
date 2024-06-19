<?php
include '../../config/config.php';
include_once "../../config/auth-admin.php";

$id   = encryptor('decrypt', $_GET['id']);

$hapus = $koneksi->query("DELETE FROM status_nikah WHERE id_status = '$id'");

if ($hapus) {
    $_SESSION['pesan'] = "Data Status Dihapus";
    echo "<script>window.location.replace('../status/');</script>";
}
