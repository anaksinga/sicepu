<?php
include_once "../../config/config.php";
include_once "../../config/auth-admin.php";

if (isset($_POST['reset'])) {
    $id     = $_POST['id_no'];
    $submit = $koneksi->query("UPDATE nomor_urut_sktu SET nomor_urut = 'ABC-00001' WHERE id_no = '$id'");

    if ($submit) {
        $_SESSION['pesan'] = "Nomor Urut Telah Direset Ulang Menjadi ABC-00001";
        echo "<script>window.location.replace('../nomor-urut-sktu/');</script>";
    }
}
