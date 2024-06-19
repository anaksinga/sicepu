<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['simpan'])) {
    $pengajuan = $_POST['pengajuan'];

    $cek = $koneksi->query("SELECT * FROM pengajuan WHERE pengajuan = '$pengajuan'")->fetch_array();
    if (!empty($cek)) {
        $_SESSION['pesan'] = "Nama pengajuan Sudah Ada !";
        echo "<script>window.history.back();</script>";
    } else {

        $submit = $koneksi->query("INSERT INTO pengajuan VALUES (null, '$pengajuan')");
        if ($submit) {
            $_SESSION['pesan'] = "Data pengajuan Ditambahkan";
            echo "<script>window.location.replace('../pengajuan/');</script>";
        }
    }
}
