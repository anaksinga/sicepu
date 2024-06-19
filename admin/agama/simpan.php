<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['simpan'])) {
    $agama = $_POST['agama'];

    $cek = $koneksi->query("SELECT * FROM agama WHERE agama = '$agama'")->fetch_array();
    if (!empty($cek)) {
        $_SESSION['pesan'] = "Agama Sudah Ada !";
        echo "<script>window.history.back();</script>";
    } else {

        $submit = $koneksi->query("INSERT INTO agama VALUES (null, '$agama')");
        if ($submit) {
            $_SESSION['pesan'] = "Data Agama Usaha Ditambahkan";
            echo "<script>window.location.replace('../agama/');</script>";
        }
    }
}
