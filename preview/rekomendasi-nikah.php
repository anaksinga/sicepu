<?php
ob_start();
include_once "../config/config.php";
include_once "../config/auth-admin.php";
include_once "../config/bulan.php";
include_once "../config/terbilang.php";

$id   = encryptor('decrypt', $_GET['id']);
$f    = $_GET['f'];
$data = $koneksi->query("SELECT * FROM iumk WHERE id_iumk = '$id'");
$row  = $data->fetch_array();

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Surat Rekomendasi Izin Menikah</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../assets/img/logometro.png">

    <style>
        .line-title {
            border: 0;
            border-style: inset;
            border-top: 1px solid #000;
            margin-top: 15px;
        }

        @font-face {
            font-family: 'font';
            font-style: normal;
            font-weight: normal;
            /* src: url(../assets/dompdf/lib/fonts/times-new-roman.ttf) format('truetype'); */
            src: url(../assets/dompdf/lib/fonts/Book-Antiqua.ttf) format('truetype');
        }

        body {
            font-family: 'font';
            line-height: 1.0;
            font-size: 10;
        }

        .bg-head {
            background-image: url('');
            background-size: 100% 100%;
            margin-top: -45px;
            margin-left: -45px;
            margin-right: -45px;
            height: 120px;
        }

        .kop {
            padding: 20px;
            padding-left: 35px;
            padding-right: 35px;
            line-height: 24px;

        }
        
          .ttd {
            margin : 0px;
            padding: 80px;
            padding-left: 460px;
            padding-right: 10
            px;
            

        }

        .bg-foot {
            background-image: url('');
            background-size: 100% 100%;
            bottom: -45px;
            height: 100px;
            /* line-height: 50px; */
            position: fixed;
            margin-left: -45px;
            margin-right: -45px;
        }
        .p {
            margin: -50px;
                padding: 40px;
               
               
            }
    </style>
</head>

<body>

    <div class="bg-head">
        <div class="kop">
            <img src="../assets/img/logometro.png" style="position: absolute; width: 70px; height: 95px; margin-top: -7px;margin-top: %">

            <table style="width: 100%;" border="0" cellspacing="1">
                <tr>
                    <td align="center">
                        <span style="font-weight: bold; font-size: 18; text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF ">
                        <font face="Tahoma">PEMERINTAH KOTA METRO</font> <br>
                        </span>
                        <span style="font-weight: bold; font-size: 24;align=center">
                             KECAMATAN METRO PUSAT
                        </span>
                        
                      <br> <span style="line-height: 1;font-size: 12;align=center">
                             Jl. Brigjend Sutiyoso Metro Telp. (0725) 41678 Kode Pos – 34111

                       
                       <br> Website : kecmetropusat.metrokota.go.id</br>
                       <hr></hr>
                       
                    </span>
                   
                    </td>
                </tr>
            </table>

        </div>
        <!-- <hr class="line-title"> -->
    </div>

    <p style="text-align: center; margin-top: 2%;">
        <label>
            <b><u>REKOMENDASI</u> <br>
                Nomor : <?= $row['nomor_iumk']; ?></b>
       
    

    <div class="p" style= "text-align: justify;font-size: 12;margin-left: -40px" >
    <br>Berdasarkan pasal 3 ayat (3) Peraturan Pemerintah Nomor 9 Tahun 1975 dan Peraturan Menteri Agama RI Nomor 20 Tahun 2019 pasal 3 ayat (4) tentang Permohonan Izin Melangsungkan Perkawinan kurang dari batas waktu  10 (sepuluh) hari, maka mengingat surat-surat yang diperlukan sudah lengkap dan kedua belah pihak telah menetapkan waktu, dengan ini kami menyetujui dilangsungkannya perkawinan antara: </br>
    
        <!--<?= $row['peraturan']; ?>-->
    </div>

    <br></br>
    <br></br>
    <br></br><br></br>
    <div style="margin-bottom: -14px;font-size: 12;text-align: left;">Calon Istri</div>
    <p style="text-align: center;">
        <span>
            <table border=" 0" width="100%" style="text-align: left; margin-left: 0px;font-size: 12" cellpadding=" 1">
                <tr>
                    <td width="40%">Nama</td>
                    <td width="3%">:</td>
                    <td><?= strtoupper($row['nama_istri']); ?></td>
                </tr>
                <tr>
                    <td width="40%">Tempat/Tanggal Lahir</td>
                    <td width="3%">:</td>
                    <td><?= strtoupper($row['tempat_lahir_istri']); ?> / <?= $row['tanggal_lahir_istri']; ?> </td>
                </tr>
                <tr>
                    <td width="40%" valign="top">Kewarganegaraan</td>
                    <td width="3%" valign="top">:</td>
                    <td><?= strtoupper($row['kewarganegaraan_istri']); ?></td>
                </tr>
                <tr>
                    <td width="40%">Pekerjaan</td>
                    <td width="3%">:</td>
                    <td><?= strtoupper($row['pekerjaan_istri']); ?></td>
                <tr>
                    <td width="40%">Agama</td>
                    <td width="3%">:</td>
                    <td><?= strtoupper($row['agama_istri']); ?></td>
                </tr>    
                <tr>
                    <td width="40%">Status</td>
                    <td width="3%">:</td>
                    <td><?= strtoupper($row['status_istri']); ?></td>
                </tr>   
                <tr>
                    <td width="40%">Alamat</td>
                    <td width="3%">:</td>
                    <td><?= strtoupper($row['alamat_istri']); ?></td>
                </tr>   
                </tr>

            
            </table>
        </span>

    </p>

    <div style="text-align: justify; word-spacing: 5px; margin-top: -15px;font-size: 12">
        <br></br>
            <br>Dengan Calon Suami </br>
        
        
    </div>


    <table border=" 0" width="100%" style="text-align: left; margin-left: 0px;font-size: 12" cellpadding=" 1">
        <tr>
            <td width="40%">Nama</td>
            <td width="3%">:</td>
            <td><?= strtoupper($row['nama_suami']); ?></td>
        </tr>
        <tr>
                    <td width="40%">Tempat/Tanggal Lahir</td>
                    <td width="3%">:</td>
                    <td><?= strtoupper($row['tempat_lahir_suami']); ?> / <?= $row['tgl_lahir_suami']; ?> </td>
                </tr>
        <tr>
            <td width="40%">Kewarganegaraan</td>
            <td width="3%">:</td>
            <td><?= strtoupper($row['kewarganegaraan_suami']); ?></td>
        </tr>
        <tr>
            <td width="40%">Pekerjaan</td>
            <td width="3%">:</td>
            <td><?= strtoupper($row['pekerjaan_suami']); ?></td>
        </tr>
        <tr>
            <td width="40%">Agama</td>
            <td width="3%">:</td>
            <td><?= strtoupper($row['agama_suami']); ?></td>
        </tr>
        <tr>
            <td width="40%">Status</td>
            <td width="3%">:</td>
            <td><?= strtoupper($row['status_suami']); ?></td>
        </tr>
        <tr>
            <td width="40%">Alamat</td>
            <td width="3%">:</td>
            <td><?= strtoupper($row['alamat_suami']); ?></td>
        </tr>
    
    
        </table>
<br>
        <table>
        <td width="100%"; style="text-align: justify; margin-left: 10px;font-size: 12">
                <?=
                   " Pada tanggal " . date('d', strtotime($row['tgl_nikah'])) . " Bulan " . $bln[date('m', strtotime($row['tgl_nikah']))] . " Tahun " . date('Y', strtotime($row['tgl_nikah'])) . " Pukul " . date('H:i', strtotime($row['tgl_nikah']))." WIB. Dengan diawasi oleh
                Pencatat Nikah/Perkawinan di "?><?= $row['kelurahan']." KECAMATAN METRO PUSAT dengan  alasan  pertimbangan   waktu  dan  jadwal   telah  di  sepakati oleh   kedua   belah  pihak   keluarga. " ?> 
                
            </td>
            </table>
<br>
        <table>
            <td width="100%"; style="text-align: left; margin-left: 10px;font-size: 12">
            Demikian surat ini dikeluarkan untuk dipergunakan sebagaimana mestinya.
    </td>
    </table>


<div class="ttd">
    <table border="0" style="width: 100%; margin-top: -25%">
        <tr>
      
            <td  style=" font-size: 12">
     
                 Metro,
               
              <?php if ($row['tgl_selesai'] == "0000-00-00" or is_null($row['tgl_selesai'])) {
                    echo tgl_indo(date('Y-m-d'));
                } else {
                    echo tgl_indo($row['tgl_selesai']);
                }
                ?>
                <br>
           
                   Camat Metro Pusat,
                <br><br><br><br><br><br><br>
                  <?= $row['nama_camat']; ?> <br>
                  <?= $row['jabatan']; ?> <br>
                  <?= "NIP." . $row['nip']; ?>
                </td>
                </tr>

                
               
           
            
           
    </table>
    </div>

    <div class="bg-foot"></div>
</body>

</html>

<?php
$html = ob_get_clean();

use Dompdf\Dompdf;

require_once "../assets/dompdf/autoload.inc.php";
$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('Legal', 'Portrait');
$dompdf->render();
$dompdf->stream("iumk.pdf", array("Attachment" => false));
?>