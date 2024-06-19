<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['edit'])) {
    $id_status    = $_POST['id_status'];
    $status_nikah = $_POST['status_nikah'];

    $submit = $koneksi->query("UPDATE status_nikah SET status_nikah = '$status_nikah' WHERE id_status = '$id_status'");
    if ($submit) {
        $_SESSION['pesan'] = "Data Status Diubah";
        echo "<script>window.location.replace('../status/');</script>";
    }
}
