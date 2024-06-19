<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['edit'])) {
    $id_agama    = $_POST['id_agama'];
    $agama = $_POST['agama'];

    $submit = $koneksi->query("UPDATE agama SET agama = '$agama' WHERE id_agama = '$id_agama'");
    if ($submit) {
        $_SESSION['pesan'] = "Data agama Usaha Diubah";
        echo "<script>window.location.replace('../kegiatan-usaha/');</script>";
    }
}
