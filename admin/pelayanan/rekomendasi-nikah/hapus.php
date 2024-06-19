<?php
include '../../../config/config.php';
include_once "../../../config/auth-admin.php";

$id    = encryptor('decrypt', $_GET['id']);

$data   = $koneksi->query("SELECT * FROM iumk WHERE id_iumk = '$id'")->fetch_array();
$nomor  = $data['nomor_iumk'];

$status = $data['status'];
$hapus = $koneksi->query("DELETE FROM iumk WHERE id_iumk = '$id'");

if ($hapus) {

    if ($status == "Selesai" and $nomor != '-') {
        // no urut sktu--
        $ceknoiumk  = $koneksi->query("SELECT * FROM nomor_urut_iumk")->fetch_array();
        $nourut     = $ceknoiumk['nomor_urut'];
        $nokurang = $nourut - 1;

        if ($nokurang < '009') {
            $nourutbaru = '00' . $nokurang;
        } elseif ($nnokurang < '099') {
            $nourutbaru = '0' . $nokurang;
        } else {
            $nourutbaru = $nokurang;
        }
        $submit = $koneksi->query("UPDATE nomor_urut_iumk SET nomor_urut = '$nourutbaru'");
        //-- no urut sktu--
    }

  
    $_SESSION['pesan'] = "Data  Dihapus";
    echo "<script>window.location.replace('../rekomendasi-nikah/');</script>";
}
