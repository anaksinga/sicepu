<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['simpan'])) {
    $berkas = $_POST['berkas'];

    $cek = $koneksi->query("SELECT * FROM berkas WHERE berkas = '$berkas'")->fetch_array();
    if (!empty($cek)) {
        $_SESSION['pesan'] = "Berkas Sudah Ada !";
        echo "<script>window.history.back();</script>";
    } else {

        $submit = $koneksi->query("INSERT INTO berkas VALUES (null, '$berkas')");
        if ($submit) {
            $_SESSION['pesan'] = "Data Berkas Ditambahkan";
            echo "<script>window.location.replace('../berkas/');</script>";
        }
    }
}
