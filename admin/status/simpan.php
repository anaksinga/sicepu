<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['simpan'])) {
    $status_nikah = $_POST['status_nikah'];

    $cek = $koneksi->query("SELECT * FROM status_nikah WHERE status_nikah = '$status_nikah'")->fetch_array();
    if (!empty($cek)) {
        $_SESSION['pesan'] = "Status Sudah Ada !";
        echo "<script>window.history.back();</script>";
    } else {

        $submit = $koneksi->query("INSERT INTO status_nikah VALUES (null, '$status_nikah')");
        if ($submit) {
            $_SESSION['pesan'] = "Data Status Ditambahkan";
            echo "<script>window.location.replace('../status/');</script>";
        }
    }
}
