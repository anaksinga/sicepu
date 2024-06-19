<?php
ob_start();
include_once "../config/config.php";
include_once "../config/auth-admin.php";
include_once "../config/bulan.php";
include_once "../config/terbilang.php";

if (isset($_POST['print'])) {
    $tgl   = $_POST['tgl'];
    $bulan = $_POST['bulan'];
    $tahun = $_POST['tahun'];

    if (empty($bulan) AND empty($tgl)) {
        $data  = $koneksi->query("SELECT * FROM iumk WHERE YEAR(tanggal) = '$tahun'");
        $jml   = mysqli_num_rows($data);
        $info  = "Tahun " . $tahun;
    } else if(empty($tgl)){
        $data  = $koneksi->query("SELECT * FROM iumk WHERE MONTH(tanggal) = '$bulan' AND YEAR(tanggal) = '$tahun'");
        $jml   = mysqli_num_rows($data);
        $info  = "Bulan " . $bln[$bulan] . " " . $tahun;
    }else{
        $data  = $koneksi->query("SELECT * FROM iumk WHERE DAY(tanggal) = '$tgl' AND MONTH(tanggal) = '$bulan' AND YEAR(tanggal) = '$tahun'");
        $jml   = mysqli_num_rows($data);
        $info  = "Tanggal ". $tgl . " Bulan " . $bln[$bulan] . " " . $tahun;
    }
    
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="../assets/img/logo-bjm.png">
    <title>Surat Rekomendasi Nikah</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        .line-title {
            border: 0;
            border-style: inset;
            border-top: 1px solid #000;
            margin-top: 12px;
            
            
        }
          .bol {
          
            padding-left: 40px;
            padding-right: 10px;
           
            font-weight: bold;

        }
    .ase {
           
            padding-left: 30px;
            padding-right: 35px;
          
            

        }
    </style>
</head>

<body>
    
  <div class="ase">
    <img src="../assets/img/logometro.png" style="position: absolute; width: 75px; height: 95px; margin-top: 30px;">
    </div>
    <div class="bol">
    <table style="width: 100%;" border="0" cellspacing="2">
        <tr>
            <td align="center">
                <span style="font-size: 18; letter-spacing: 0px;">
                    PEMERINTAH KOTA METRO <br>
                </span>
                <span style="font-weight: bold; font-size: 24; letter-spacing:0px;">
                    KECAMATAN METRO PUSAT <br>
                </span>
                <span style="line-height: 1; font-size: 11;">
                    Jl. Brigjend Sutiyoso Metro, Kota Metro, Lampung 3411 <br>
                    Telpon/ Faximile : <u style="color: blue;">(0725) 41678</u> Email : <u style="color: blue;">metropusatkec@gmail.com</u>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
                    Website : kecmetropusat.metrokota.go.id
                </span>
            </td>
        </tr>
    </table>
    </div>


    <hr class="line-title">

    <h2 align="center">
        <u>Laporan Surat Rekomendasi Nikah</u>
    </h2>

    <table border="2" width="100%" cellpadding="3" cellspacing="0">
        <thead>
            <tr align="center" style="font-weight: bold; font:10">
                <th>No</th>
                <th>Nomor Surat</th>
                <th>Tanggal Pengajuan</th>
                <th>Kelurahan</th>
                <th>Nama Istri</th>
                <th>Nama Suami</th>
                <th>Nomor Telepon/WhatsApps</th>
                <th>Email</th>
               <!-- <th>Posisi</th>-->
                

               <!-- <th>Tangal Selesai</th>-->
               <!-- <th>Status</th>-->
            </tr>
        </thead>

        <tbody>
            <?php
            foreach ($data as $row) {
                $po = $koneksi->query("SELECT * FROM posisi_berkas WHERE id_posisi = '$row[id_posisi]'")->fetch_array();
            ?>
                <tr align="center" style="font:10">
                    <td width="5%"><?= $no++; ?></td>
                    
                    <td align="center"><?= $row['nomor_iumk'] ?></td>
                    <td>
                        <?= tgl_indo(date('Y-m-d', strtotime($row['tanggal'])));
                        ?>
                    </td>
                    
                    <td align="center"><?= $row['kelurahan'] ?></td>
                    <td align="center"><?= $row['nama_istri'] ?></td>
                    <td align="center"><?= $row['nama_suami'] ?></td>
                    <td align="center"><?= $row['no_telp_suami'] ?></td>
                    <td align="center"><?= $row['email'] ?></td>
                   <!-- <td><?= $po['posisi'] ?></td>-->
                   <!-- <td>
                        <?php
                        if ($row['tgl_selesai'] == '0000-00-00' or is_null($row['tgl_selesai'])) {
                            echo '-';
                        } else {
                            echo tgl_indo($row['tgl_selesai']);
                        }
                        ?>
                    </td>-->
                   <!-- <td><?= $row['status'] ?></td>-->
                </tr>
            <?php } ?>
        </tbody>
        <tfoot>
            <tr align="center">
                <td colspan="8"><small style="font-weight: bold;"> Jumlah Data : <?= $jml; ?></small></td>
            </tr>
        </tfoot>
    </table>

    <div align="right">
        <small>
            Laporan : <?= $info; ?> <br>
            Dicetak pada : <?= tgl_indo(date('Y-m-d')); ?>
        </small>
    </div>


</body>

</html>

<?php
$html = ob_get_clean();

use Dompdf\Dompdf;

require_once "../assets/dompdf/autoload.inc.php";
$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('Legal', 'potrait');
$dompdf->render();
$dompdf->stream("lap-rekomendasi-nikah.pdf", array("Attachment" => false));
?>