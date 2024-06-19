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
    $kelurahan = $_POST['kelurahan'];
    $pengajuan = $_POST['pengajuan'];

    if(empty($kelurahan) AND empty($pengajuan)){
        if (empty($tgl) AND empty($bulan)) {
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE YEAR(tgl_permohonan) = '$tahun'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tahun " . $tahun;
    
        } 
        elseif(empty($tgl)){
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun'");
            $jml   = mysqli_num_rows($data);
            //echo " $tahun dhfhdkhgkdfgkdfgkdfjgkdfjgkdf";
            $info  = "Bulan " . $bln[$bulan] . " " . $tahun;
        }  
        else{
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE DAY(tgl_permohonan) = '$tgl' AND MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tanggal ".$tgl." Bulan " . $bln[$bulan] . " " . $tahun;
        }
    }
    elseif(empty($kelurahan)){
        if (empty($tgl) AND empty($bulan)) {
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE YEAR(tgl_permohonan) = '$tahun' AND pengajuan='$pengajuan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tahun " . $tahun;
    
        }
        elseif(empty($tgl)){
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun' AND pengajuan='$pengajuan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Bulan " . $bln[$bulan] . " " . $tahun;
        }  
        else{
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE DAY(tgl_permohonan) = '$tgl' AND MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun' AND pengajuan='$pengajuan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tanggal ".$tgl." Bulan " . $bln[$bulan] . " " . $tahun;
        }
    }

    else if(empty($pengajuan)){
        if (empty($tgl) AND empty($bulan)) {
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE YEAR(tgl_permohonan) = '$tahun' AND kelurahan='$kelurahan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tahun " . $tahun;
    
        }
        elseif(empty($tgl)){
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun' AND kelurahan='$kelurahan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Bulan " . $bln[$bulan] . " " . $tahun;
        }  
        else{
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE DAY(tgl_permohonan) = '$tgl' AND MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun' AND kelurahan='$kelurahan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tanggal ".$tgl." Bulan " . $bln[$bulan] . " " . $tahun;
        }
    }
    
    elseif(!empty($kelurahan) AND !empty($pengajuan)){
        if (empty($tgl) AND empty($bulan)) {
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE YEAR(tgl_permohonan) = '$tahun' AND pengajuan='$pengajuan' AND kelurahan='$kelurahan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tahun " . $tahun;
    
        } 
        elseif(empty($tgl)){
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun'AND pengajuan='$pengajuan' AND kelurahan='$kelurahan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Bulan " . $bln[$bulan] . " " . $tahun;
        }
        else{
            $data  = $koneksi->query("SELECT * FROM ahli_waris WHERE DAY(tgl_permohonan) = '$tgl' AND MONTH(tgl_permohonan) = '$bulan' AND YEAR(tgl_permohonan) = '$tahun' AND pengajuan='$pengajuan' AND kelurahan='$kelurahan'");
            $jml   = mysqli_num_rows($data);
            $info  = "Tanggal ".$tgl." Bulan " . $bln[$bulan] . " " . $tahun;
        }
    }

}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="../assets/img/logo-bjm.png">
    <title>Laporan Surat Pengantar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        .line-title {
            border: 0;
            border-style: inset;
            border-top: 1px solid #000;
            margin-top: 12px;
        }
        
         .bil {
          
            padding-left: 40px;
            padding-right: 10px;
           
            font-weight: bold;

        }
    .asi {
           
            padding-left: 30px;
            padding-right: 35px;
          
            

        }
    </style>
</head>

<body>
     <div class="asi">
    <img src="../assets/img/logometro.png" style="position: absolute; width: 75px; height: 95px; margin-top: 15px;">
</div>

<div class="bil">
    <table style="width: 100%;" border="0" cellspacing="2">
        <tr>
            <td align="center">
                <span style="font-size: 18; letter-spacing: 0.5px;">
                    PEMERINTAH KOTA METRO <br>
                </span>
                <span style="font-weight: bold; font-size: 24; letter-spacing: 0.5px;">
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
        <u>Rekap Pengajuan Kartu Keluarga (KK)</u>
    </h2>

    <table border="2" width="80%" cellpadding="0" cellspacing="0">
        <thead>
            <tr align="center" style="font-weight: bold;font-size:9;">
                <th>No</th>
               <!-- <th>Tanggal Permohonan</th>-->
                <th>Kelurahan</th>
                <th>Nama KK</th>
                <th>Nomor KK</th>
                <!--<th>Nomor KTP</th>-->
                <th>Nama Pemohon</th>
                <th>No Telpon</th>
                <th>Keterangan</th>
                <th>Pengajuan</th>
                
                <!--<th>Status</th>-->
            </tr>
        </thead>

        <tbody>
            <?php
            foreach ($data as $row) {
                $po = $koneksi->query("SELECT * FROM posisi_berkas WHERE id_posisi = '$row[id_posisi]'")->fetch_array();
            ?>
          
                <tr align="left" style="font-size:8.3;">
                    <td width="2%"><?= $no++; ?></td>
                  <!--  <td>
                        <?=
                            tgl_indo(date('Y-m-d', strtotime($row['tgl_permohonan'])));
                        ?>
                    </td>-->
                    <td><?= $row['kelurahan'] ?></td>
                    <td align="center"><?= $row['nama_kk'] ?></td>
                    <td align="left"><?= $row['kartu_keluarga'] ?></td>
                    <!--<td align="center"><?= $row['nomor_ktp'] ?></td>-->
                    <td align="center"><?= $row['nama_pemohon'] ?></td>
                    <td align="left"><?= $row['no_telp'] ?></td>
                    <td align="left"><?= $row['keterangan'] ?></td>
                    <td align="center"><?= $row['pengajuan'] ?></td>
                   <!-- <td><?= $po['posisi'] ?></td>-->
                    
                    <!--<td><?php 
                        if ($row['status'] == "verifikasi_kecamatan") { $row['status']= "Verifikasi Kecamatan";}
                        else if ($row['status'] == "verifikasi_disdukcapil") { $row['status']= "Verifikasi Disdukcapil";}
                        else if ($row['status'] == "berkas_kurang_lengkap") { $row['status']= "Berkas Kurang Lengkap";}
                        else if ($row['status'] == "berkas_lengkap") { $row['status']= "Berkas Lengkap";}
                        else if($row['status'] == "selesai") { $row['status']= "Selesai";} else{}
                    ?><?= $row['status'] ?></td>-->
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
$dompdf->stream("lap-kk.pdf", array("Attachment" => false));
?>