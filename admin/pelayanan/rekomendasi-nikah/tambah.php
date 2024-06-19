<!DOCTYPE html>
<html>

<?php
include_once "../../../config/config.php";
include_once "../../../config/bulan.php";
include_once "../../../config/auth-admin.php";
include_once "../../../template/head.php";

$ceknoiumk    = $koneksi->query("SELECT * FROM nomor_urut_iumk")->fetch_array();
$nourut       = $ceknoiumk['nomor_urut'];

?>

<body class="hold-transition sidebar-mini sidebar-collapse">
    <div class="wrapper">

        <!-- Navbar -->
        <?php include_once "../../../template/navbar.php"; ?>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <?php include_once "../../../template/sidebar.php"; ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Tambah Data Rekomendasi Nikah</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active">Pelayanan</li>
                                <li class="breadcrumb-item active">Rekomendasi Nikah</li>
                                <li class="breadcrumb-item active">Tambah</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- left column -->
                    <form class="form-horizontal" method="POST" action="" enctype="multipart/form-data">

                        <div class="row">
                            <div class="col-md-12">
                                <!-- Horizontal Form -->
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Form Tambah</h3>
                                            </div>
                                            <!-- /.card-header -->
                                            <!-- form start -->
                                         <div class="card-body" style="background-color: azure;">

                                            <div class="form-group row">
                                            <label for="tanggal" class="col-sm-2 col-form-label">Tanggal</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control datepicker" id="tanggal" name="tanggal" value="<?= date('Y-m-d') ?>" required>
                                            </div>
                                            </div>

                                            <div class="form-group row">
                                            <label for="nomor_iumk" class="col-sm-2 col-form-label">Nomor</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nomor_iumk" name="nomor_iumk" value="<?= $kodeotomatis = "517/" . sprintf('%03s', $nourut) . "/RN"."/". date('Y');?>" readonly>
                                            </div>
                                         </div>

                                            <div class="form-group row">
                                            <label for="nomor_pendaftaran" class="col-sm-2 col-form-label">Nomor Pendaftaran</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="nomor_pendaftaran" id="nomor_pendaftaran" class="form-control" readonly value="<?= sprintf('%03s', $nourut) ?>">
                                            </div>
                                            </div>

                                            <div class="form-group row">
                                            <label for="tgl_nikah" class="col-sm-2 col-form-label">Tanggal Nikah</label>
                                            <div class="col-sm-10">
                                            <input type="datetime-local" class="form-control" id="tgl_nikah" name="tgl_nikah" value="<?= date('Y-m-d-H:i') ?>" required>
                                            </div>
                                            </div>

                                            <div class="form-group row">
                                            <label for="kelurahan" class="col-sm-2 col-form-label">Kelurahan</label>
                                            <div class="col-sm-10">
                                                <select name="kelurahan" id="kelurahan" class="form-control select2" data-placeholder="Pilih Kelurahan" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $kelurahan = $koneksi->query("SELECT * FROM kelurahan ORDER BY kelurahan ASC");
                                                    foreach ($kelurahan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['kelurahan'] ?>"><?= $kel['kelurahan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                            </div>

                                                    
                                        </div>
                                        </div>

                                        </div>
                                        <!-- /.card-body -->

                                    </div>
                                    <!-- /.card -->




                                    <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Form Tambah Calon Istri</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: azure;">

                                    

                                        <div class="form-group row">
                                            <label for="nama_istri" class="col-sm-2 col-form-label">Nama Calon Istri</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_istri" name="nama_istri" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nik_istri" class="col-sm-2 col-form-label">NIK</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nik_istri" name="nik_istri" onkeypress="return Angkasaja(event)" maxlength="25" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tempat_lahir_istri" class="col-sm-2 col-form-label">Tempat Lahir</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="tempat_lahir_istri" name="tempat_lahir_istri" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tanggal_lahir_istri" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                                            <div class="col-sm-10">
                                            <input type="date" class="form-control" id="tanggal_lahir_istri" name="tanggal_lahir_istri" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="kewarganegaraan_istri" class="col-sm-2 col-form-label">Kewarganegaraan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="kewarganegaraan_istri" name="kewarganegaraan_istri" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pekerjaan_istri" class="col-sm-2 col-form-label">Pekerjaan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="pekerjaan_istri" name="pekerjaan_istri" required>
                                            </div>
                                        </div>

                                         <div class="form-group row">
                                            <label for="agama_istri" class="col-sm-2 col-form-label">Agama</label>
                                            <div class="col-sm-10">
                                                <select name="agama_istri" id="agama_istri" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $agm = $koneksi->query("SELECT * FROM agama ORDER BY agama ASC");
                                                    foreach ($agm as $ag) {
                                                    ?>
                                                        <option value="<?= $ag['agama']; ?>"><?= $ag['agama']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="status_istri" class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-sm-10">
                                                <select name="status_istri" id="status_istri" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $sts = $koneksi->query("SELECT * FROM status_nikah ORDER BY status_nikah ASC");
                                                    foreach ($sts as $st) {
                                                    ?>
                                                        <option value="<?= $st['status_nikah']; ?>"><?= $st['status_nikah']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="no_telp_istri" class="col-sm-2 col-form-label">Nomor Telepon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="no_telp_istri" name="no_telp_istri" onkeypress="return Angkasaja(event)" required maxlength="13">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label for="keterangan_istri" class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="keterangan_istri" id="keterangan_istri" placeholder="Boleh Dikosongkan">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="alamat_istri" class="col-sm-2 col-form-label">Alamat Lengkap</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" name="alamat_istri" id="alamat_istri" rows="3" required ></textarea>
                                            </div>
                                        </div>
                                        

                                    </div>
                                    <!-- /.card-body -->

                                </div>
                                <!-- /.card -->


                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Form Tambah Calon Suami</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: azure;">

                                    

                                        <div class="form-group row">
                                            <label for="nama_suami" class="col-sm-2 col-form-label">Nama Calon Suami</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_suami" name="nama_suami" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nik_suami" class="col-sm-2 col-form-label">NIK</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nik_suami" name="nik_suami" onkeypress="return Angkasaja(event)" maxlength="25" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tempat_lahir_suami" class="col-sm-2 col-form-label">Tempat Lahir</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="tempat_lahir_suami" name="tempat_lahir_suami" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tgl_lahir_suami" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control datepicker" id="tgl_lahir_suami" name="tgl_lahir_suami" value="<?= date('Y-m-d') ?>" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="kewarganegaraan_suami" class="col-sm-2 col-form-label">Kewarganegaraan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="kewarganegaraan_suami" name="kewarganegaraan_suami" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pekerjaan_suami" class="col-sm-2 col-form-label">Pekerjaan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="pekerjaan_suami" name="pekerjaan_suami" required>
                                            </div>
                                        </div>
                                       
                                        <div class="form-group row">
                                            <label for="agama_suami" class="col-sm-2 col-form-label">Agama</label>
                                            <div class="col-sm-10">
                                                <select name="agama_suami" id="agama_suami" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $agm = $koneksi->query("SELECT * FROM agama ORDER BY agama ASC");
                                                    foreach ($agm as $ag) {
                                                    ?>
                                                        <option value="<?= $ag['agama']; ?>"><?= $ag['agama']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="status_suami" class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-sm-10">
                                                <select name="status_suami" id="status_suami" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $sts = $koneksi->query("SELECT * FROM status_nikah ORDER BY status_nikah ASC");
                                                    foreach ($sts as $st) {
                                                    ?>
                                                        <option value="<?= $st['status_nikah']; ?>"><?= $st['status_nikah']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="alamat_suami" class="col-sm-2 col-form-label">Alamat Lengkap</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" name="alamat_suami" id="alamat_suami" rows="3" required ></textarea>
                                            </div>
                                        </div>
                                                                 
                                        <div class="form-group row">
                                            <label for="no_telp_suami" class="col-sm-2 col-form-label">Nomor Telepon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="no_telp_suami" name="no_telp_suami" onkeypress="return Angkasaja(event)" required maxlength="13">
                                            </div>
                                        </div>
                                                                
                                        <div class="form-group row">
                                            <label for="keterangan_suami" class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="keterangan_suami" id="keterangan_suami" placeholder="Boleh Dikosongkan">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                                            </div>
                                        </div>

                                       
                                    
                                    </div>
                                    <!-- /.card-body -->

                                 </div>


                                 <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Status</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: azure;">

                            

                                        <div class="form-group row">
                                            <label for="posisi" class="col-sm-2 col-form-label">Posisi Berkas</label>
                                            <div class="col-sm-10">
                                                <select name="id_posisi" id="posisi" class="form-control" required>
                                                    <?php
                                                    $posisi = $koneksi->query("SELECT * FROM posisi_berkas ORDER BY id_posisi ASC");
                                                    foreach ($posisi as $po) {
                                                    ?>
                                                        <option value="<?= $po['id_posisi'] ?>"><?= $po['posisi'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="status" class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-sm-5">
                                                <select name="status" id="status" class="form-control" data-placeholder="Pilih">
                                                    <option value="Belum Diproses" selected>Belum Diproses</option>
                                                   <!-- <option value="Dalam Proses">Dalam Proses</option>
                                                    <option value="Selesai">Selesai</option>-->
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row" id="tglselesai" style="display: none;">
                                        </div>

                                        <div class="form-group row">
                                            <label for="nama_camat" class="col-sm-2 col-form-label">Camat</label>
                                            <div class="col-sm-10">
                                                <?php $camat = $koneksi->query("SELECT * FROM camat WHERE status = 'Aktif'")->fetch_array(); ?>
                                                <input type="text" class="form-control" id="nama_camat" name="nama_camat" value="<?= $camat['nama_camat'] ?>" readonly>
                                                <input type="hidden" name="nip" value="<?= $camat['nip'] ?>" readonly>
                                                <input type="hidden" name="jabatan" value="<?= $camat['jabatan'] ?>" readonly>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- /.card-body -->

                                </div>

                                    <div class="card-footer" style="background-color: white;">
                                        <a href="<?= base_url('admin/pelayanan/iumk') ?>" class="btn bg-gradient-secondary float-right"><i class="fa fa-arrow-left"> Batal</i></a>
                                        <button type="submit" name="submit" class="btn bg-gradient-primary float-right mr-2"><i class="fa fa-save"> Simpan</i></button>
                                    </div>
                                    <!-- /.card-footer -->

                                </div>

                            </div>
                            <!--/.col (left) -->
                        </div>

                    </form>

                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <?php include_once "../../../template/footer.php"; ?>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <?php include_once "../../../template/script.php"; ?>

    
       
        <?php
    if (isset($_POST['submit'])) {

        // AMBIL DASAR HUKUM SKTU
        $dataperaturan = $koneksi->query("SELECT * FROM peraturan_iumk")->fetch_array();
        $tanggal                        = $_POST['tanggal'] . " " . date('H:i:s');
        $nomor_iumk             =$_POST['nomor_iumk'];
        //$peraturan                  = $dataperaturan['peraturan'];
        $nomor_pendaftaran          =$_POST['nomor_pendaftaran'];
        $tgl_nikah                  = $_POST['tgl_nikah'] . " " . date('l-Y-m-d-H:i');
        $kelurahan                  =$_POST['kelurahan'];
        $nama_istri                 = $_POST['nama_istri'];
        $nik_istri                  = $_POST['nik_istri'];        
        $tempat_lahir_istri         = $_POST['tempat_lahir_istri'];
        $tanggal_lahir_istri        = $_POST['tanggal_lahir_istri'];
        $kewarganegaraan_istri      = $_POST['kewarganegaraan_istri'];
        $pekerjaan_istri            = $_POST['pekerjaan_istri'];
       $agama_istri                 = $_POST['agama_istri'];
       $status_istri                = $_POST['status_istri'];
       $no_telp_istri               = $_POST['no_telp_istri'];
       $keterangan_istri            = $_POST['keterangan_istri'];
       $alamat_istri                = $_POST['alamat_istri'];
        $nama_suami                 = $_POST['nama_suami'];
        $nik_suami                  = $_POST['nik_suami'];
        $tempat_lahir_suami         = $_POST['tempat_lahir_suami'];
        $tgl_lahir_suami            = $_POST['tgl_lahir_suami'];
        $kewarganegaraan_suami      = $_POST['kewarganegaraan_suami'];
        $pekerjaan_suami            = $_POST['pekerjaan_suami'];
        $agama_suami                = $_POST['agama_suami'];
        $status_suami               = $_POST['status_suami'];
        $alamat_suami               = $_POST['alamat_suami'];
        $no_telp_suami              = $_POST['no_telp_suami'];
        $keterangan_suami           = $_POST['keterangan_suami'];
        $email                      = $_POST['email'];
        $nama_camat                 = $_POST['nama_camat'];
        $jabatan                    = $_POST['jabatan'];
        $nip                        = $_POST['nip'];        
        $id_posisi                  = $_POST['id_posisi'];
        $status                     = $_POST['status'];


        if ($status == "Belum Proses") {
            $ceknoiumk  = $koneksi->query("SELECT * FROM nomor_urut_iumk")->fetch_array();
            $nourut     = $ceknoiumk['nomor_urut'];
          
            
           // $tgl_selesai        = $_POST['tgl_selesai'];
            $id_posisi          = 4;


            $submit = $koneksi->query("INSERT INTO iumk VALUES (
                null, 
                '$tanggal',
                '$nomor_iumk',
                '$peraturan',
                '$nomor_pendaftaran',
                '$tgl_nikah',
                '$kelurahan',
                '$nama_istri', 
                '$nik_istri', 
                '$tempat_lahir_istri',
                '$tanggal_lahir_istri',
                '$kewarganegaraan_istri', 
                '$pekerjaan_istri', 
                '$agama_istri', 
                '$status_istri',
                '$no_telp_istri',
                '$keterangan_istri',
                '$alamat_istri',               
                '$nama_suami',
                '$nik_suami',
                '$tempat_lahir_suami'
                '$tgl_lahir_suami',
                '$kewarganegaraan_suami',
                '$pekerjaan_suami',
                '$status_suami',
                '$alamat_suami',
                '$no_telp_suami',
                '$keterangan_suami',
                '$eamil',
                '$nama_camat',
                '$jabatan',
                '$nip',
                '$tgl_selesai',
                '$id_posisi',
                '$status'
                )");
        } else {

           

            $submit = $koneksi->query("INSERT INTO iumk VALUES (
                null, 
                '$tanggal',
                '$nomor_iumk',
                '$peraturan',
                '$nomor_pendaftaran',
                '$tgl_nikah',
                '$kelurahan',
                '$nama_istri', 
                '$nik_istri', 
                '$tempat_lahir_istri', 
                '$tanggal_lahir_istri', 
                '$kewarganegaraan_istri', 
                '$pekerjaan_istri',
                '$agama_istri',
                '$status_istri',
                '$no_telp_istri',
                '$keterangan_istri',
                '$alamat_istri',              
                '$nama_suami',
                '$nik_suami',
                '$tempat_lahir_suami',
                '$tgl_lahir_suami',
                '$kewarganegaraan_suami',
                '$pekerjaan_suami',
                '$agama_suami',
                '$status_suami',
                '$alamat_suami',
                '$no_telp_suami',
                '$keterangan_suami',
                '$eamil',
                '$nama_camat',
                '$jabatan',
                '$nip',
                null,
                '$id_posisi',
                '$status'
                )");
        }

        if ($submit) {

            if ($status == "Belum Diproses") {
                // no urut sktu++
               
                $notambah = $nourut+1;

                if ($notambah < '009') {
                    $nourutbaru = '00' . $notambah;
                } elseif ($nnotambaho < '099') {
                    $nourutbaru = '0' . $notambah;
                } else {
                    $nourutbaru = $notambah;
                }
                $submit = $koneksi->query("UPDATE nomor_urut_iumk SET nomor_urut = '$nourutbaru'");
                //-- no urut sktu++
            }

        
          
        
            if ($submit) {

          
        
                $_SESSION['pesan'] = "Data Surat Rekomendasi Nikah Ditambahkan";
                echo "<script>window.location.replace('../rekomendasi-nikah/');</script>";
            }
        }
    }

    ?>

</body>

</html>