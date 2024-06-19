<?php
include_once "config/config.php";
?>

<!DOCTYPE html>
<html lang="en">
     <meta name="viewport" content="width=device-width, initial-scale=1">

<?php include_once "template/ui/head.php"; ?>
<style>

     .warna-hover :hover {
        background-image: linear-gradient(-90deg, lightblue, DodgerBlue);
    } 

    #bg-card {
        background: url('assets/bg-cover/putih.jpg') center center no-repeat;
        background-size: cover;
    }
    @import "compass/css3";

.checkout-wrap {
  color: #444;
  margin: 40px auto;
  max-width: 890px;
  position: relative;
}
ul.checkout-bar {
  margin: 0 20px;
  li {
    color: red;
    display: block;
    font-size: 13px;
    padding: 14px 20px 14px 80px;
    position: relative;
    &:before {
      /* paling kanan */
      background: #8bc53f;
      border: 2px solid #fff;
      border-radius: 50%;
      color: #fff;
      font-size: 16px;
      left: 20px;
      line-height: 37px;
      height: 35px;
      position: absolute;
      text-align: center;
      text-shadow: 1px 1px rgba(0, 0, 0, 0.2);
      top: 4px;
      width: 35px;
      z-index: 999;
    }
    &.active {
      color: #8bc53f;
      &:before {
        background: #8bc53f;
        z-index: 99999;
      }
    }
    &.visited {
      background: #ffff0078;
      color: #15b4c5;
      &:before {
        background: #57aed1;
        z-index: 99999;
      }
    }
    &:nth-child(1) {
      &:before {
        content: "1";
      }
    }
    &:nth-child(2) {
      &:before {
        content: "2";
      }
    }
    &:nth-child(3) {
      &:before {
        content: "3";
      }
    }
    &:nth-child(4) {
      &:before {
        content: "4";
      }
    }
    &:nth-child(5) {
      &:before {
        content: "4";
      }
    }
  }
  a {
    color: #57aed1;
    font-size: 13px;
  }
}

@media all and (min-width: 800px) {
  .checkout-bar li.active:after {
    background-color: #8bc53f;
    content: "";
    height: 15px;
    width: 100%;
    left: 50%;
    position: absolute;
    top: -50px;
    z-index: 0;
  }
  .checkout-wrap {
    margin: 50px 0px 80px 0px;
  }
  ul.checkout-bar {
    background-color: #8bc53f;
    border-radius: 15px;
    height: 15px;
    margin: 0 auto;
    padding: 0;
    position: absolute;
    width: 100%;
    &:before {
      background-color: #57aed1;
      border-radius: 15px;
      content: " ";
      height: 15px;
      left: 0;
      position: absolute;
      width: 10%;
    }
    li {
      display: inline-block;
      margin: 50px 0 0;
      padding: 0;
      text-align: center;
      width: 22%;
      &:before {
        height: 45px;
        left: 36%;
        line-height: 45px;
        position: absolute;
        top: -65px;
        width: 45px;
        z-index: 99;
      }
      &.visited {
        background: none;
        &:after {
          background-color: #57aed1;
          content: "";
          height: 15px;
          left: 50%;
          position: absolute;
          top: -50px;
          width: 100%;
          z-index: 99;
        }
      }
    }
  }
}


</style>

<body>
     <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ======= Header ======= -->
    <?php include_once "template/ui/header.php"; ?>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
       
    </section><!-- End Hero -->

    <main id="main">

        <!-- ======= Pelayanan Section ======= -->
        <section id="pelayanan" class="pelayanan section-bg gra" >
            <div class="container-fluid">

                <div class="section-title" style="font-weight: bold; color: black; font: 40px">
                    <h2>Pelayanan</h2>
                    <p>Lacak Surat Pengantar</p>
                </div>

                <!-- new div Pelayanan -->
                <div class="d-flex flex-column justify-content-center align-items-center">
                    <form class="form-horizontal col-sm-8" method="POST" action="?page=track">
                        <div class="form-group">
                            <div class="col-sm-15">
                                <input type="text" class="form-control input-lg" name="nomor_pendaftaran" id="nomor_pendaftaran" placeholder="Nomor" autocomplete="off" required>
                            </div>
                            
                            <div class="col-sm-15">
                                <button type="submit" class="btn btn-warning">Cek</button>
                            </div>
                        </div>
                    </form>
                    <?php
               // echo  $_POST['id_ahli_waris'];
                if (isset($_POST['nomor_pendaftaran'])) { 
                    $noms = $_POST['nomor_pendaftaran'];
                    // echo $noms;
                    $connection = connection();
                    $query = mysqli_query($connection, "SELECT * FROM ahli_waris WHERE nomor_pendaftaran like '$noms' ORDER BY nomor_pendaftaran DESC")
                                                    or die('Ada kesalahan pada query tampil data pengiriman: '.mysqli_error($connection));

                    $data = mysqli_fetch_assoc($query);
                    //echo $data;

                    $tanggal        = $data['tgl_permohonan'];
                    $tgl            = explode('-',$tanggal);
                   
                ?>
                    <div class="alert alert-success col-sm-8">
                        <button type="button" class="close" data-dismiss="alert">
                            <i class="ace-icon fa fa-times"></i>
                        </button>
                        <strong><i class="ace-icon fa fa-info-circle"></i> Informasi Pengiriman </strong><br><br>
                        
                        <table>
                            <tr>
                                <td width="150">No. Pengiriman</td>
                                <td width="15">:</td>
                                <td><strong><?php echo $data['nomor_pendaftaran']; ?></strong></td>
                            </tr>

                            <tr>
                                <td width="150">Nama Pemohon</td>
                                <td width="15">:</td>
                                <td><strong><?php echo $data['nama_pemohon']; ?></strong></td>
                            </tr>
                            <tr>
                                <td width="150">Alamat</td>
                                <td width="15">:</td>
                                <td><strong><?php echo $data['alamat']; ?></strong></td>
                            </tr>

                            <tr>
                                <td width="150">keterangan</td>
                                <td width="15">:</td>
                                <td><strong><?php echo $data['keterangan']; ?></strong></td>
                            </tr>
                            
                           <tr>
                                <td>Status</td>
                                <td>:</td>
                                <td><strong>
                                    <?php 
                                    if ($data['status'] == 'verifikasi_berkas_kecamatan') : 
                                        echo "Verifikasi Kecamatan";
                                        elseif ($data['status'] == 'verifikasi_disdukcapil') : 
                                            echo "Verifikasi Disdukcapil";
                                            elseif ($data['status'] == 'berkas_kurang_lengkap') :
                                                echo "Berkas Kurang Lengkap";
                                                elseif ($data['status'] == 'berkas_lengkap') :
                                                    echo "Berkas Lengkap";
                                                    elseif ($data['status'] == 'selesai') :
                                                        echo "Selesai";
                                    endif;

                                    ?></strong></td>
   
                            </tr>
                           
                        </table>
                       
                        <div class="checkout-wrap my-4">
                            <ul class="checkout-bar  my-4">
                                <?php if ($data['status'] == 'verifikasi_berkas_kecamatan') : ?>
                                    <li class="visited first">Verifikasi Berkas<br>Kecamatan</li>
                                    <li class="">Proses Berkas di<br>Disdukcapil</li>
                                    <li class="">Berkas<br>Lengkap</li>
                                    <li class="">Selesai / Dapat Diambil<br>&nbsp;</li>

                                <?php elseif ($data['status'] == 'verifikasi_disdukcapil') : ?>
                                    <li class="visited first">Verifikasi Berkas<br>Kecamatan</li>
                                    <li class="previous visited">Proses Berkas di<br>Disdukcapil</li>
                                    <li class="">Berkas<br>Lengkap</li>
                                    <li class="">Selesai / Dapat Diambil<br>&nbsp;</li>

                                <?php elseif ($data['status'] == 'berkas_kurang_lengkap') : ?>
                                    <li class="visited first">Verifikasi Berkas<br>Kecamatan</li>
                                    <li class="previous visited">Proses Berkas di<br>Disdukcapil</li>
                                    <li class="previous visited">Dokumen<br>Kurang Lengkap</li>
                                    <br>
                                    <br>
                                    <h1>DOKUMEN PENGAJUAN SURAT PENGANTAR ANDA KURANG LENGKAP, BACA KETERANGAN DI BAWAH</h1>
                                    <h1><strong width="150">keterangan</strong>
                                    <td width="15">:</td>
                                    <strong><?php echo $data['keterangan']; ?></strong></h1>
                                   
                                
                                <?php elseif ($data['status'] == 'berkas_lengkap') : ?>
                                    <li class="visited first">Verifikasi Berkas<br>Kecamatan</li>                                    
                                    <li class="previous visited">Proses Berkas di<br>Disdukcapil</li>                                   
                                    <li class="previous visited">Berkas<br>Lengkap</li>
                                    <li class="">Selesai / Dapat Diambil<br>&nbsp;</li>

                                <?php elseif ($data['status'] == 'selesai') : ?>
                                    <li class="visited first">Verifikasi Berkas<br>Kecamatan</li>                                  
                                    <li class="previous visited">Proses Berkas di<br>Disdukcapil</li>                                  
                                    <li class="previous visited">Berkas<br>Lengkap</li>
                                    <li class="previous visited">Selesai / Dapat Diambil<br>&nbsp;</li>
                                <?php endif; ?>
                            </ul>
                        </div>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
					</div>
                <?php
                }
                ?>
                   

                    <div class="col-md-4 my-4"></div>

                </div>
                <!-- close div Pelayanan -->

                <hr size="30" style="background-color: white; margin-top: 3%; margin-bottom: 3%;">

                <!-- new div tentang -->
                <div class="section-title" id="tentang" style="font-weight: bold; color: black; margin-top: 20%;">
                    <h2>Tentang</h2>
                    <p>Tentang SI CEPU KECAMATAN METRO PUSAT</p>
                </div>
                
                <div class="row justify-content-center">
                    <div class="col-lg-12 my-4" style="color: black;">

                        <div class="card my-4">
                            <div class="card-header" style="background-color: #386dff; color: white;">
                                SI CEPU KECAMATAN METRO PUSAT
                            </div>
                            <div class="card-body">
                                Sistem Informasi yang di gunakan untuk melacak surat
                            </div>
                        </div>


                        <div class="card my-4">
                            <div class="card-header" style="background-color: #386dff; color: white;">
                                ALUR PELAYANAN PEMOHON
                            </div>
                            <div class="card-body">
                                <img src="<?= base_url('assets/img/alurpemohon.png'); ?>" style="width: 100%; height: 100%;" alt="digram alur">
                            </div>
                            </div>
                        </div>


                        <!--<div class="card my-4">
                            <div class="card-header" style="background-color: #386dff; color: white;">
                                BLANKO
                            </div>
                            <div class="card-body">

                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%">
                                        <thead>
                                            <tr align="center">
                                                <th width="5%">No</th>
                                                <th style="text-align: left;">Blanko</th>
                                                <th style="text-align: left;">Keterangan</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           // <?php
                                            //$blanko = $koneksi->query("SELECT * FROM blanko ORDER BY nama_blanko ASC");
                                            foreach ($blanko as $blk) {
                                            ?>
                                                <tr align="center">
                                                    <td width="5%"><?= $no++; ?></td>
                                                    <td width="30%" align="left"><?= $blk['nama_blanko']; ?></td>
                                                    <td align="justify"><?= $blk['keterangan']; ?></td>
                                                    <td width="10%">
                                                        <a href="<?= base_url('assets/blanko/' . $blk['file']); ?>" download=""><u>Download</u></a>
                                                        <a href="<?= base_url('assets/blanko/' . $blk['file']); ?>" class="btn btn-success btn-sm" download=""><i class="fa fa-download"> Download</i></a>
                                                    </td>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>-->


                    </div>
                </div>
                <!-- close div tentang -->

               <!-- <hr size="30" style="background-color: white; margin-top: 3%; margin-bottom: 3%;">

                <div class="section-title" id="contact" style="font-weight: bold; color: black; margin-top: 3%;">
                    <h2>Survey Kepuasan Masyarakat</h2>-->
                    <!-- <p>Informasi Kontak </p> -->
                <!--</div>

                <div class="row justify-content-center">
                    <div class="col-md-4" align="center">
                        <div class="card">
                            <div class="card-header" style="font-weight: bold; background-color: white;">
                                Bagaimana pendapat anda tentang pelayanan aplikasi e-LOK ?
                            </div>
                            <div class="card-body" align="left" style="margin-bottom: -4rem;">
                                <?php if (isset($_COOKIE['notif'])) { ?>
                                    <h5 style="text-align: center;"><?= $_COOKIE['notif']; ?></h5>
                                <?php } ?>
                                <form action="polling" method="POST" style="<?php if (isset($_COOKIE['polling'])) {
                                                                                echo $_COOKIE['polling'];
                                                                            } ?>">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="polling" id="exampleRadios1" value="1" checked>
                                        <label class="form-check-label" for="exampleRadios1">
                                            Sangat Baik
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="polling" id="exampleRadios2" value="2">
                                        <label class="form-check-label" for="exampleRadios2">
                                            Baik
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="polling" id="exampleRadios3" value="3">
                                        <label class="form-check-label" for="exampleRadios3">
                                            Cukup
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="polling" id="exampleRadios4" value="4">
                                        <label class="form-check-label" for="exampleRadios4">
                                            Kurang
                                        </label>
                                    </div>

                                    <div align="center" class="mt-3">
                                        <button class="btn btn-primary" name="vote">Kirim</button>
                                    </div>
                                </form>
                                <hr>-->
                                <!-- ======= Skills Section ======= -->
                               <!-- <section id="skills" class="skills" style="margin-top: -4rem;">

                                    <div class="row skills-content">

                                        <div class="col-lg-12">

                                            <?php
                                            $polling    = $koneksi->query("SELECT * FROM polling")->fetch_array();
                                            $sangatbaik = $polling['sangatbaik'];
                                            $baik       = $polling['baik'];
                                            $cukup      = $polling['cukup'];
                                            $kurang     = $polling['kurang'];

                                            $jumlah     = $sangatbaik + $baik + $cukup + $kurang;

                                            if ($sangatbaik > 0 || $baik > 0 || $cukup > 0 || $kurang > 0) {
                                                $p_sangatbaik = round(($sangatbaik / $jumlah) * 100);
                                                $p_baik       = round(($baik / $jumlah) * 100);
                                                $p_cukup      = round(($cukup / $jumlah) * 100);
                                                $p_kurang     = round(($kurang / $jumlah) * 100);
                                            } else {
                                                $p_sangatbaik = 0;
                                                $p_baik       = 0;
                                                $p_cukup      = 0;
                                                $p_kurang     = 0;
                                            }

                                            ?>

                                            <div class="progress">
                                                <span class="skill">Sangat Baik <i class="val"><?= $p_sangatbaik . " %"; ?></i></span>
                                                <div class="progress-bar-wrap">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="<?= $p_sangatbaik; ?>" aria-valuemin="0" aria-valuemax="100" style="background-color: green;"></div>
                                                </div>
                                            </div>

                                            <div class="progress">
                                                <span class="skill">Baik <i class="val"><?= $p_baik . " %"; ?></i></span>
                                                <div class="progress-bar-wrap">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="<?= $p_baik; ?>" aria-valuemin="0" aria-valuemax="100" style="background-color: blue;"></div>
                                                </div>
                                            </div>

                                            <div class="progress">
                                                <span class="skill">Cukup <i class="val"><?= $p_cukup . " %"; ?></i></span>
                                                <div class="progress-bar-wrap">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="<?= $p_cukup; ?>" aria-valuemin="0" aria-valuemax="100" style="background-color: orange;"></div>
                                                </div>
                                            </div>

                                            <div class="progress">
                                                <span class="skill">Kurang <i class="val"><?= $p_kurang . " %"; ?></i></span>
                                                <div class="progress-bar-wrap">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="<?= $p_kurang; ?>" aria-valuemin="0" aria-valuemax="100" style="background-color: red;"></div>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </section>-->
                                <!-- End Skills Section -->

                            </div>
                        </div>
                    </div>
                </div>

                <hr size="30" style="background-color: white; margin-top: 3%; margin-bottom: 3%;">
                
                <!-- new div kontak -->
                <div class="section-title" id="contact" style="font-weight: bold; color: black; margin-top: 3%;">
                    <h2>Kontak Kami</h2>
                    <p>Informasi Kontak Kecamatan Metro Pusat</p>
                </div>

                <div class="row justify-content-center">

                   <div class="col-lg-13">

                        <div class="info-wrap">
                            <div class="row" style="color: white;">
                                <div class="col-lg-2 info">
                                    <i class="icofont-google-map"></i>
                                    <h4>Lokasi:</h4>
                                    <p>
                                        <a href="https://maps.app.goo.gl/PVd7Lwd49jrPLXMN6" target="blank">
                                        Jl. Brigjend Sutiyoso Metro, Kota Metro, Lampung 34111
                                        </a>
                                    </p>
                                </div>

                                <div class="col-lg-3 info mt-3 mt-lg-0">
                                    <i class="icofont-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>metropusatkec@gmail.com</p>
                                </div>

                                <div class="col-lg-3 info mt-3 mt-lg-0">
                                    <i class="icofont-web"></i>
                                    <h4>Website:</h4>
                                    <p><a href="https://kecmetropusat.metrokota.go.id/">kecmetropusat.metrokota.go.id</a></p>
                                </div>

                                <div class="col-lg-2 info mt-2 mt-lg-0">
                                    <i class="icofont-phone"></i>
                                    <h4>Telepon/ Faximile:</h4>
                                    <p>(0725) 41678</p>  
                                </div>

                                <div class="col-lg-2 info mt-2 mt-lg-0">
                                    <i class="icofont-instagram"></i>
                                    <h4>Instagram:</h4>
                                    <p><a href="https://www.instagram.com/kecamatan_metropusat?igsh=MXJnYnZhMXZvYnFybw==">Instagram</a></p>
                                </div>
                                
                            </div>
                          
                        </div>

                    </div>

                </div>
                <!-- close div kontak -->


            </div>
        </section>
        <!-- End Contact Section -->

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <?php include_once "template/ui/footer.php"; ?>
    <!-- End Footer -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

    <!-- Vendor JS Files -->

    <?php include_once "template/ui/script.php"; ?>

</body>

</html>