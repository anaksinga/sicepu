<!DOCTYPE html>
<html>

<?php
include_once "../../../config/config.php";
include_once "../../../config/bulan.php";
include_once "../../../config/auth-admin.php";
include_once "../../../template/head.php";

$id   = encryptor('decrypt', $_GET['id']);
$data = $koneksi->query("SELECT * FROM iumk WHERE id_iumk = '$id'");
$row  = $data->fetch_array();
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
                            <h1 class="m-0 text-dark">Edit Data Surat Rekomendasi Nikah</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active">Pelayanan</li>
                                <li class="breadcrumb-item active">Rekomendasi Nikah</li>
                                <li class="breadcrumb-item active">Edit</li>
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
                                        <h3 class="card-title">Form Edit</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: azure;">

                                        <div class="form-group row">
                                            <label for="tanggal" class="col-sm-2 col-form-label">Tanggal</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control datepicker" id="tanggal" name="tanggal" value="<?= date('Y-m-d', strtotime($row['tanggal'])); ?>" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nomor_iumk" class="col-sm-2 col-form-label">Nomor</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nomor_iumk" name="nomor_iumk" value="<?= $row['nomor_iumk']; ?>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="nomor_pendaftaran" class="col-sm-2 col-form-label">Nomor Pendaftaran</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nomor_pendaftaran" name="nomor_pendaftaran" value="<?= $row['nomor_pendaftaran']; ?>" readonly>
                                            </div>
                                        </div>

                                       
                                        <div class="form-group row">
                                            <label for="tgl_nikah" class="col-sm-2 col-form-label">Tanggal Nikah</label>
                                            <div class="col-sm-10">
                                                <input type="datetime-local" class="form-control" id="tgl_nikah" name="tgl_nikah" value="<?= date("Y-m-d\TH:i:s", strtotime($row['tgl_nikah'])) ?>" required>
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
                                                        <option value="<?= $kel['kelurahan'] ?>" <?php if ($row['kelurahan'] == $kel['kelurahan']) {
                                                                                                        echo "selected";
                                                                                                    } ?>><?= $kel['kelurahan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        </div>
                                    <!-- /.card-body -->

                                </div>
                                <!-- /.card -->


                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Form Edit Calon Istri</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: azure;">

                                        <div class="form-group row">
                                            <label for="nama_istri" class="col-sm-2 col-form-label">Nama istri</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_istri" name="nama_istri" required readonly value="<?= $row['nama_istri']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nik_istri" class="col-sm-2 col-form-label">NIK</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nik_istri" name="nik_istri" onkeypress="return Angkasaja(event)" maxlength="25" required value="<?= $row['nik_istri']; ?>" readonly>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tempat_lahir_istri" class="col-sm-2 col-form-label">Tempat Lahir</label>
                                            <div class="col-sm-10">
                                            <input type="text" class="form-control" id="tempat_lahir_istri" name="tempat_lahir_istri" required readonly value="<?= $row['tempat_lahir_istri']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tanggal_lahir_istri" class="col-sm-2 col-form-label">Tanggal</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control datepicker" id="tanggal_lahir_istri" name="tanggal_lahir_istri" value="<?= date('Y-m-d', strtotime($row['tanggal_lahir_istri'])); ?>" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="kewarganegaraan_istri" class="col-sm-2 col-form-label">Kewarganegaraan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="kewarganegaraan_istri" name="kewarganegaraan_istri" required value="<?= $row['kewarganegaraan_istri']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pekerjaan_istri" class="col-sm-2 col-form-label">Pekerjaan istri</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="pekerjaan_istri" name="pekerjaan_istri" required value="<?= $row['pekerjaan_istri']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="agama_istri" class="col-sm-2 col-form-label">Agama</label>
                                            <div class="col-sm-5">
                                                <select name="agama_istri" id="agama_istri" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $agm = $koneksi->query("SELECT * FROM agama ORDER BY agama ASC");
                                                    foreach ($agm as $ag) {
                                                    ?>
                                                        <option value="<?= $ag['agama']; ?>" <?php if ($row['agama_istri'] == $ag['agama']) {
                                                                                                            echo "selected";
                                                                                                        } ?>><?= $ag['agama']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                            

                                        <div class="form-group row">
                                            <label for="status_istri" class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-sm-5">
                                                <select name="status_istri" id="status_istri" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $sts = $koneksi->query("SELECT * FROM status_nikah ORDER BY status_nikah ASC");
                                                    foreach ($sts as $st) {
                                                    ?>
                                                        <option value="<?= $st['status_nikah']; ?>" <?php if ($row['status_istri'] == $st['status_nikah']) {
                                                                                                            echo "selected";
                                                                                                        } ?>><?= $st['status_nikah']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="no_telp_istri" class="col-sm-2 col-form-label">Nomor Telepon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="no_telp_istri" name="no_telp_istri" required value="<?= $row['no_telp_istri']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="keterangan_istri" class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="keterangan_istri" name="keterangan_istri"  value="<?= $row['keterangan_istri']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="alamat_istri" class="col-sm-2 col-form-label">Alamat Lengkap</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="alamat_istri" id="alamat_istri" rows="3" required value="<?= $row['alamat_istri']; ?>">
                                            </div>
                                        </div>


                                        </div>
                                    <!-- /.card-body -->

                                </div>
                                <!-- /.card -->


                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Form Edit Calon Suami</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: azure;">

                                        <div class="form-group row">
                                            <label for="nama_suami" class="col-sm-2 col-form-label">Nama Suami</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_suami" name="nama_suami" required value="<?= $row['nama_suami']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nik_suami" class="col-sm-2 col-form-label">NIK</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nik_suami" name="nik_suami" onkeypress="return Angkasaja(event)" maxlength="25" required value="<?= $row['nik_suami']; ?>" readonly>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tempat_lahir_suami" class="col-sm-2 col-form-label">Tempat Lahir</label>
                                            <div class="col-sm-10">
                                            <input type="text" class="form-control" id="tempat_lahir_suami" name="tempat_lahir_suami" required readonly value="<?= $row['tempat_lahir_suami']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="tgl_lahir_suami" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control datepicker" id="tgl_lahir_suami" name="tgl_lahir_suami" value="<?= date('Y-m-d', strtotime($row['tgl_lahir_suami'])); ?>" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="kewarganegaraan_suami" class="col-sm-2 col-form-label">Kewarganegaraan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="kewarganegaraan_suami" name="kewarganegaraan_suami" required value="<?= $row['kewarganegaraan_suami']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pekerjaan_suami" class="col-sm-2 col-form-label">Pekerjaan Suami</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="pekerjaan_suami" name="pekerjaan_suami" required value="<?= $row['pekerjaan_suami']; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="agama_suami" class="col-sm-2 col-form-label">Agama</label>
                                            <div class="col-sm-5">
                                                <select name="agama_suami" id="agama_suami" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $agm = $koneksi->query("SELECT * FROM agama ORDER BY agama ASC");
                                                    foreach ($agm as $ag) {
                                                    ?>
                                                        <option value="<?= $ag['agama']; ?>" <?php if ($row['agama_suami'] == $ag['agama']) {
                                                                                                            echo "selected";
                                                                                                        } ?>><?= $ag['agama']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                            

                                        <div class="form-group row">
                                            <label for="status_suami" class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-sm-5">
                                                <select name="status_suami" id="status_suami" class="form-control select2" data-placeholder="Pilih" required style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $sts = $koneksi->query("SELECT * FROM status_nikah ORDER BY status_nikah ASC");
                                                    foreach ($sts as $st) {
                                                    ?>
                                                        <option value="<?= $st['status_nikah']; ?>" <?php if ($row['status_suami'] == $st['status_nikah']) {
                                                                                                            echo "selected";
                                                                                                        } ?>><?= $st['status_nikah']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="alamat_suami" class="col-sm-2 col-form-label">Alamat Lengkap</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="alamat_suami" id="alamat_suami" rows="3" required value="<?= $row['alamat_suami']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="no_telp_suami" class="col-sm-2 col-form-label">Nomor Telepon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="no_telp_suami" name="no_telp_suami" required value="<?= $row['no_telp_suami']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="keterangan_istri" class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="keterangan_istri" name="keterangan_istri" value="<?= $row['keterangan_istri']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="email" name="email" value="<?= $row['email']; ?>">
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
                                            <label for="nama_camat" class="col-sm-2 col-form-label">Camat</label>
                                            <div class="col-sm-10">
                                                <?php $camat = $koneksi->query("SELECT * FROM camat WHERE status = 'Aktif'")->fetch_array(); ?>
                                                <input type="text" class="form-control" id="nama_camat" name="nama_camat" value="<?= $camat['nama_camat'] ?>" readonly>
                                                <input type="hidden" name="nip" value="<?= $camat['nip'] ?>" readonly>
                                                <input type="hidden" name="jabatan" value="<?= $camat['jabatan'] ?>" readonly>
                                            </div>
                                        </div>

                                        <div class="form-group row" id="tglselesai" style="display: none;">
                                        </div>
                                  
                                        <div class="form-group row">
                                            <label for="posisi" class="col-sm-2 col-form-label">Posisi Berkas</label>
                                            <div class="col-sm-10">
                                                <select name="id_posisi" id="posisi" class="form-control" required>
                                                    <?php
                                                    $posisi = $koneksi->query("SELECT * FROM posisi_berkas ORDER BY id_posisi ASC");
                                                    foreach ($posisi as $po) {
                                                    ?>
                                                        <option value="<?= $po['id_posisi'] ?>" <?php if ($row['id_posisi'] == $po['id_posisi']) {
                                                                                                    echo "selected";
                                                                                                } ?>><?= $po['posisi'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="status" class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-sm-5">
                                                <select name="status" id="status" class="form-control" data-placeholder="Pilih">
                                                    <option value="Belum Diproses" <?php if ($row['status'] == "Belum Diproses") {
                                                                                        echo "selected";
                                                                                    } ?>>Selesai</option>
                                                   <!-- <option value="Dalam Proses" <?php if ($row['status'] == "Dalam Proses") {
                                                                                        echo "selected";
                                                                                    } ?>>Dalam Proses</option>
                                                    <option value="Selesai" <?php if ($row['status'] == "Selesai") {
                                                                                echo "selected";
                                                                            } ?>>Selesai</option>-->
                                                </select>
                                            </div>
                                        </div>

                                        
                                        </div>
                                    <!-- /.card-body -->

                                </div>


                                        

                               

                                <!--<div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Lampiran <small style="color: yellow;">(*Kosongkan Lampiran Jika Tidak Diubah)</small></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                            </button>
                                        </div>-->
                                        <!-- /.card-tools -->
                                   <!-- </div>-->
                                    <!-- /.card-header -->
                                    <!--<div class="card-body" style="background-color: azure;">

                                        <small style="color: red; font-style: italic; font-weight: bold;">
                                            *Upload File Dalam Format JPG / PNG / PDF <br>
                                            *Ukuran Maksimal File 1 Mb <br>
                                        </small>
                                        <hr>

                                       < <?php
                                        $datalampiran = $koneksi->query("SELECT * FROM lampiran_iumk ORDER BY id_lampiran ASC");
                                        foreach ($datalampiran as $lampiran) {
                                        ?>

                                            <div class="form-group row">
                                                <label><?= $lampiran['nama_lampiran'] ?></label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input val_file" name="file[]">
                                                    <input type="hidden" name="id_lampiran[]" value="<?= $lampiran['id_lampiran'] ?>">
                                                    <label class="custom-file-label">Choose File</label>
                                                </div>
                                            </div>

                                        <?php } ?>

                                    </div>-->
                                    <!-- /.card-body -->

                                    <div class="card-footer" style="background-color: white;">
                                        <a href="<?= base_url('admin/pelayanan/rekomendasi-nikah') ?>" class="btn bg-gradient-secondary float-right"><i class="fa fa-arrow-left"> Batal</i></a>
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

    <script>
        $(document).ready(function() {
            $(".dropify").dropify();

            $("#npwp").mask("99.999.999.9-999.999");
        });

        // APPEND KOLOM INPUT TANGGAL SELESAI
        $('#status').on('change', function() {
            if (this.value == "Selesai") {
                $("#tglselesai").slideDown("fast");
                $("#tglselesai").append('<label class="col-sm-2 col-form-label">Tanggal Selesai</label><div class="col-sm-10"><input type="date" class="form-control" name="tgl_selesai" required></div>');
            } else {
                $("#tglselesai").slideUp("fast");
                $("#tglselesai").empty();
            }
        });

        // VALIDASI FILE UPLOAD
       // $('.val_file').on('change', function() {
         //   var nf = this.files[0].name;
           // var ext = this.files[0].type;

            // VALIDASI UKURAN FILE TIDAK LEBIH DARI 1 MB
            //if (this.files[0].size > 1 * 1024 * 1024) {
              //  setTimeout(function() {
                //    swal({
                  //      title: 'File ' + nf + ' Terlalu Besar !',
                    //    text: 'Silahkan Upload File Dengan Ukuran Maksimal 1 Mb',
                     //   type: 'warning',
                       // timer: 3000,
                        //showConfirmButton: true
                   // });
                //}, 10);
                //this.value = "";
            //}

            // VALIDAST EKSTENSION FILE UPLOAD
            //if (ext != "image/jpeg" && ext != "image/png" && ext != "application/pdf") {
              //  setTimeout(function() {
                //    swal({
                  //      title: 'Format File ' + nf + ' Tidak Diperbolehkan !',
                    //    text: 'Silahkan Upload File Format JPG / PNG / PDF',
                      //  type: 'warning',
                        //timer: 3000,
                        //showConfirmButton: true
                    //});
                //}, 10);
                //this.value = "";
            //}
        //});
    </script>

    <?php
    if (isset($_POST['submit'])) {

        // ambil dasar hukum 
        $dataperaturan = $koneksi->query("SELECT * FROM iumk")->fetch_array();

        $tanggal                        = $_POST['tanggal'] . " " . date('H:i:s');
        $peraturan                  = $dataperaturan['peraturan'];
        $nomor_pendaftaran          =$_POST['nomor_pendaftaran'];
        $tgl_nikah                  = $_POST['tgl_nikah'] . " " . date('H:i:s');
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
        $nama_suami = $_POST['nama_suami'];
        $nik_suami = $_POST['nik_suami'];
        $tempat_lahir_suami = $_POST['tempat_lahir_suami'];
        $tgl_lahir_suami = $_POST['tgl_lahir_suami'];
        $kewarganegaraan_suami = $_POST['kewarganegaraan_suami'];
        $pekerjaan_suami = $_POST['pekerjaan_suami'];
        $agama_suami = $_POST['agama_suami'];
        $status_suami = $_POST['status_suami'];
        $alamat_suami = $_POST['alamat_suami'];
        $no_telp_suami = $_POST['no_telp_suami'];
        $keterangan_suami = $_POST['keterangan_suami'];
        $nama_camat               = $_POST['nama_camat'];
        $jabatan                  = $_POST['jabatan'];
        $nip                      = $_POST['nip'];        
        $id_posisi                = $_POST['id_posisi'];
        $status                   = $_POST['status'];


        // CEK APAKAH FOTO DIGANTI
        //if (!empty($_FILES['foto_pemohon']['name'])) {
          //  $fotolama = $row['foto_pemohon'];

            // UPLOAD FOTO PEMOHON
            //$fotopemohon      = $_FILES['foto_pemohon']['name'];
            //$x_fotopemohon    = explode('.', $fotopemohon);
            //$ext_fotopemohon  = end($x_fotopemohon);
            //$nama_fotopemohon = rand(1, 99999) . '.' . $ext_fotopemohon;
            //$size_fotopemohon = $_FILES['foto_pemohon']['size'];
            //$tmp_fotopemohon  = $_FILES['foto_pemohon']['tmp_name'];
            //$dir_fotopemohon  = '../../../assets/iumk_foto_pemohon/';


            //move_uploaded_file($tmp_fotopemohon, $dir_fotopemohon . $nama_fotopemohon);
            //if (file_exists($dir_fotopemohon . $fotolama)) {
              //  unlink($dir_fotopemohon . $fotolama);
           // }
           // $event_fotopemohon .= "Foto Sukses Diubah";
       // } else {
         //   $nama_fotopemohon = $row['foto_pemohon'];
         //   $event_fotopemohon .= "Foto Tidak Diubah";
      //  }

        if ($status == "Belum Diproses" and $nomor_iumk == '-') {
            $ceknoiumk    = $koneksi->query("SELECT * FROM nomor_urut_iumk")->fetch_array();
            $nourut       = $ceknoiumk['nomor_urut'];
            //$kodeotomatis = "MTR / " . sprintf('%03s', $nourut) . " / NKH / " . date('Y');
            $nomor_iumk   = $kodeotomatis;
            // no urut iumk++
            $notambah = $nourut + 1;

            if ($notambah < '009') {
                $nourutbaru = '00' . $notambah;
            } elseif ($nnotambaho < '099') {
                $nourutbaru = '0' . $notambah;
            } else {
                $nourutbaru = $notambah;
            }
            $submit = $koneksi->query("UPDATE nomor_urut_iumk SET nomor_urut = '$nourutbaru'");
            //-- no urut iumk++
           //$tgl_selesai = $_POST['tgl_selesai'];
            $id_posisi   = 4;

            $submit = $koneksi->query("UPDATE iumk SET
            tanggal         ='$tanggal',
            nomor_iumk      ='$nomor_iumk',
            peraturan       = '$peraturan',
            nomor_pendaftaran   ='$nomor_pendaftaran',
            tgl_nikah           ='$tgl_nikah',
            kelurahan           ='$kelurahan',
            nama_istri          ='$nama_istri',
            nik_istri           ='$nik_istri',
            tempat_lahir_istri  ='$tempat_lahir_istri',
            tanggal_lahir_istri ='$tanggal_lahir_istri',
            kewarganegaraan_istri   ='$kewarganegaraan_istri',
            pekerjaan_istri       ='$pekerjaan_istri',
            agama_istri             ='$agama_istri',
            status_istri            ='$status_istri',
            no_telp_istri           ='$no_telp_istri',
            keterangan_istri           ='$keterangan_istri',
            alamat_istri                ='$alamat_istri',
            nama_suami                  ='$nama_suami',
            nik_suami                   ='$nik_suami',
            tempat_lahir_suami          ='$tempat_lahir_suami',
            tgl_lahir_suami             ='$tgl_lahir_suami',
            kewarganegaraan_suami       ='$kewarganegaraan_suami',
            pekerjaan_suami             ='$pekerjaan_suami',
            agama_suami                 ='$agama_suami',
            status_suami                ='$status_suami',
            alamat_suami                ='$alamat_suami',
            no_telp_suami               ='$no_telp_suami',
            keterangan_suami            ='$keterangan_suami',
            nama_camat                  = '$nama_camat',
            jabatan                     = '$jabatan',
            nip                         = '$nip',
            tgl_selesai                 = '$tgl_selesai',
            id_posisi                   = '$id_posisi', 
            status                      = '$status'
            WHERE id_iumk               = '$id'
            ");
        } else if ($status == "Belum Diproses") {
            $tgl_selesai = $_POST['tgl_selesai'];
            $id_posisi   = 4;

            $submit = $koneksi->query("UPDATE iumk SET
            tanggal         ='$tanggal',
           
            peraturan       = '$peraturan',
            nomor_pendaftaran   ='$nomor_pendaftaran',
            tgl_nikah           ='$tgl_nikah',
            kelurahan           ='$kelurahan',
            nama_istri          ='$nama_istri',
            nik_istri           ='$nik_istri',
            tempat_lahir_istri  ='$tempat_lahir_istri',
            tanggal_lahir_istri ='$tanggal_lahir_istri',
            kewarganegaraan_istri   ='$kewarganegaraan_istri',
            pekerjaan_istri       ='$pekerjaan_istri',
            agama_istri             ='$agama_istri',
            status_istri            ='$status_istri',
            no_telp_istri           ='$no_telp_istri',
            keterangan_istri           ='$keterangan_istri',
            alamat_istri                ='$alamat_istri',
            nama_suami                  ='$nama_suami',
            nik_suami                   ='$nik_suami',
            tempat_lahir_suami          ='$tempat_lahir_suami',
            tgl_lahir_suami             ='$tgl_lahir_suami',
            kewarganegaraan_suami       ='$kewarganegaraan_suami',
            pekerjaan_suami             ='$pekerjaan_suami',
            agama_suami                 ='$agama_suami',
            status_suami                ='$status_suami',
            alamat_suami                ='$alamat_suami',
            no_telp_suami               ='$no_telp_suami',
            keterangan_suami            ='$keterangan_suami',
            nama_camat                  = '$nama_camat',
            jabatan                     = '$jabatan',
            nip                         = '$nip',
            tgl_selesai                 = '$tgl_selesai',
            id_posisi                   = '$id_posisi', 
            status                      = '$status'
            WHERE id_iumk               = '$id'
            ");
        } else {
            $submit = $koneksi->query("UPDATE iumk SET 
            tanggal         ='$tanggal',
         
            peraturan       = '$peraturan',
            nomor_pendaftaran   ='$nomor_pendaftaran',
            tgl_nikah           ='$tgl_niikah',
            kelurahan           ='$kelurahan',
            nama_istri          ='$nama_istri',
            nik_istri           ='$nik_istri',
            tempat_lahir_istri  ='$tempat_lahir_istri',
            tanggal_lahir_istri ='$tanggal_lahir_istri',
            kewarganegaraan_istri   ='$kewarganegaraan_istri',
            pekerjaan_istri       ='$pekerjaan_istri',
            agama_istri             ='$agama_istri',
            status_istri            ='$status_istri',
            no_telp_istri           ='$no_telp_istri',
            keterangan_istri           ='$keterangan_istri',
            alamat_istri                ='$alamat_istri',
            nama_suami                  ='$nama_suami',
            nik_suami                   ='$nik_suami',
            tempat_lahir_suami          ='$tempat_lahir_suami',
            tgl_lahir_suami             ='$tgl_lahir_suami',
            kewarganegaraan_suami       ='$kewarganegaraan_suami',
            pekerjaan_suami             ='$pekerjaan_suami',
            agama_suami                 ='$agama_suami',
            status_suami                ='$status_suami',
            alamat_suami                ='$alamat_suami',
            no_telp_suami               ='$no_telp_suami',
            keterangan_suami            ='$keterangan_suami',
            nama_camat                  = '$nama_camat',
            jabatan                     = '$jabatan',
            nip                         = '$nip',
            tgl_selesai                 = '$tgl_selesai',
            id_posisi                   = '$id_posisi', 
            status                      = '$status'
            WHERE id_iumk               = '$id'
            ");
        }


        if ($submit) {

           // if (!empty($event_fotopemohon)) {

                // UPLOAD FILE LAMPIRAN
                //$gambar_arr    = array();
               // $filelama      = array();
               // $idl           = $_POST['id_lampiran'];
               // $hitungidl     = count($idl);

               // $event = "";

               // for ($i = 0; $i < $hitungidl; $i++) {

                  //  $file           = $_FILES['file']['name'][$i];

                  //  if (!empty($file)) {

                      //  $nama_lamp      = explode('.', $file);
                     //   $format_lamp    = end($nama_lamp);
                      //  $nama_lampiran  = rand(1, 99999) . '.' . $format_lamp;

                        // temporari file
                      //  $tmp_file  = $_FILES['file']['tmp_name'][$i];

                      //  $targer_dir = '../../../assets/iumk/';
                      //  $target_file = $targer_dir . $nama_lampiran;

                      //  move_uploaded_file($tmp_file, $target_file);
                      //  $gambar_arr[] = $target_file;

                        // REPLACE FILE LAMA
                       // $queryfilelama = $koneksi->query("SELECT * FROM lampiran_iumk_file WHERE id_iumk = '$id'");
                       // foreach ($queryfilelama as $fl) {
                        //    $filelama[] = $fl['file'];
                        //   if (file_exists($targer_dir . $filelama[$i])) {
                           //     unlink($targer_dir . $filelama[$i]);
                          //  }
                      //  }

                     //   $koneksi->query("UPDATE lampiran_iumk_file SET file = '$nama_lampiran' WHERE id_lampiran = '$idl[$i]' AND id_iumk = '$id'");

                     //   $event .= "upload berhasil";
                //    } else {
                        $event .= "File Tidak Diubah";
                //    }
             //   }
            //    }


            if (!empty($event)) {
                $_SESSION['pesan'] = "Data Surat Rekomendasi Nikah Diubah";
                echo "<script>window.location.replace('../rekomendasi-nikah/');</script>";
            }
        }
    }
    ?>

</body>

</html>