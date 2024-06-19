
<!-- Page Heading/Breadcrumbs -->
<?php
include_once "../../config/config.php";
include_once "../../config/bulan.php";
// include_once "../../config/auth-mas.php";
include_once "../../template/ui/head.php";

// $idm      = $_SESSION['id_masyarakat'];
// $data_mas = $koneksi->query("SELECT * FROM masyarakat WHERE id_masyarakat = '$idm'")->fetch_array();

?>
<div class="row">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">
                    <i style="margin-right:6px" class="fa fa-send-o"></i>
                    Lacak Surat Pengantar
                </h3>
                <ol class="breadcrumb">
                    <li><a href="?page=home">Beranda</a>
                    </li>
                    <li class="active">Track</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="panel panel-default">
                            <div style="background:#3c8dbc" class="panel-body">
                                <form class="form-horizontal" method="POST" action="?page=track">
                                    
                                    <h4 style="margin-top:0;color:#fff;border-bottom:none" class="page-header">
                                        Lacak Surat Pengantar
                                    </h4>

                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control input-lg" name="nomor_pendaftaran" id="nomor_pendaftaran" placeholder="Nomor" autocomplete="off" required>
                                        </div>
                                    
                                        <div class="col-sm-2">
                                            <button type="submit" class="btn btn-warning btn-lg">Cek</button>
                                        </div>
                                    </div>
                                </form>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
                
                <br> 

                <?php
               // echo  $_POST['id_ahli_waris'];
                if (isset($_POST['nomor_pendaftaran'])) { 
                    $connection = connection();
                    $query = mysqli_query($connection, "SELECT * FROM ahli_waris WHERE nomor_pendaftaran = $_POST[nomor_pendaftaran] ORDER BY nomor_pendaftaran DESC")
                                                    or die('Ada kesalahan pada query tampil data pengiriman: '.mysqli_error($connection));

                    $data = mysqli_fetch_assoc($query);
                    //echo $data;

                    $tanggal        = $data['tgl_permohonan'];
                    $tgl            = explode('-',$tanggal);
                   
                ?>
                    <div class="alert alert-success">
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
                                <td><strong><?php echo $data['status']; ?></strong></td>

                                
                            </tr>
                           
                        </table>
                        <br>
                    </div>
                    haloo
                <?php
                }
                ?>
            </div>
        </div>
    </div>
</div>
<!-- /.row -->
