<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['edit'])) {
    $id_berkas    = $_POST['id_berkas'];
    $berkas = $_POST['berkas'];

    $submit = $koneksi->query("UPDATE berkas SET berkas = '$berkas' WHERE id_berkas = '$id_berkas'");
    if ($submit) {
        $_SESSION['pesan'] = "Data Berkas Diubah";
        echo "<script>window.location.replace('../berkas/');</script>";
    }
}
