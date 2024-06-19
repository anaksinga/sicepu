<?php
ob_start();
include_once "../config/config.php";
include_once "../config/auth-admin.php";
include_once "../config/bulan.php";
include_once "../config/hari.php";
include_once "../config/terbilang.php";

$id   = encryptor('decrypt', $_GET['id']);
$data = $koneksi->query("SELECT * FROM ahli_waris WHERE id_ahli_waris = '$id'");
$row  = $data->fetch_array();

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Nomor Pendaftaran</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="../assets/img/logometro.png">


    <style type="text/css">
        @font-face {
            font-family: 'font';
            font-style: normal;
            font-weight: normal;
            src: url(../assets/dompdf/lib/fonts/Times-Roman.afm);
        }

        body {
            font-family: 'font';
        }

        

        .kop {
            padding: -20px;
            padding-left: 130px;
            padding-right: 35px;
            line-height: 22px;
            font-weight: bold;

        }
          .kop1 {
            padding: -20px;
            padding-left: 500px;
            padding-right: 35px;
            line-height: 22px;
            font-weight: bold;

        }

        .bg-foot {
            background-image: url('../assets/bg-cover/sktu-2.png');
            background-size: 100% 100%;
            bottom: -45px;
            height: 120px;
            position: fixed;
            margin-left: -45px;
            margin-right: -45px;
        }
    </style>
</head>

<body>
     <br/>
            <br/>

    <div class="bg-head">
        <div class="kop">
           
            
      
     
        <img src="../assets/img/website.png" style="position: absolute; width: 90px; height: 90px; margin-top: 37px;">
        </div>
        
       
         <div class="kop1">
       
       <img src="../assets/img/skmmetro.png" style="position: absolute; width: 90px; height: 90px; margin-top: 37px;">
        </div>
        
        <table style="width: 100%;" border="0" cellspacing="0">
        
                <tr>
                    <td align="center">
                        <span style="font-size: 14; text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;">
                            PEMERINTAH KOTA METRO <br>
                        </span>
                        <span style="font-size: 15;">
                            KECAMATAN METRO PUSAT<br>
                            
                        </span>
                        <span style="font-size: 12;">
                            NOMOR PELACAKAN DOKUMEN  
                        </span>
                        <br/>
                        <span>
                        <b style="font-size: 40"><?= $row['nomor_pendaftaran']; ?></b>
                      </span>
                      <br/>
                     
                    <span style="font-size: 12;">
               
                            www.sicepu-metrokota.com  <br><br>
                            </td>
                        </span>
                         
                </tr>
            </table>

        </div>
        <!-- <hr class="line-title"> -->
    
</body>

</html>

<?php
$html = ob_get_clean();

use Dompdf\Dompdf;

require_once "../assets/dompdf/autoload.inc.php";
$dompdf = new Dompdf();
$dompdf->loadHtml($html);
// $dompdf->setPaper('legal', 'Portrait');
$custompaper = array(0, 0, 609.4488, 935.433); // F4
$dompdf->setPaper($custompaper, 'portrait');
$dompdf->render();
$dompdf->stream("sktu-baru.pdf", array("Attachment" => false));

?>