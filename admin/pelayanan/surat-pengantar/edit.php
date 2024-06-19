<!DOCTYPE html>
<html>

<?php
include_once "../../../config/config.php";
include_once "../../../config/bulan.php";
include_once "../../../config/auth-admin.php";
include_once "../../../template/head.php";

$id   = encryptor('decrypt', $_GET['id']);
$data = $koneksi->query("SELECT * FROM ahli_waris WHERE id_ahli_waris = '$id'");
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
                            <h1 class="m-0 text-dark">Edit Surat Pengatar</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item">Pelayanan</li>
                                <li class="breadcrumb-item">Surat Pengantar</li>
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
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-12">
                            <!-- Horizontal Form -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Edit Data</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form class="form-horizontal" method="POST" action="">
                                    <div class="card-body" style="background-color: azure;">

                                        <div class="form-group row">
                                            <label for="tgl_permohonan" class="col-sm-2 col-form-label">Tanggal</label>
                                            <div class="col-sm-4">
                                                <input type="date" class="form-control" id="tgl_permohonan" name="tgl_permohonan" required value="<?= $row['tgl_permohonan'] ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nomor_pendaftaran" class="col-sm-2 col-form-label">Nomor Pendaftaran</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="nomor_pendaftaran" id="nomor_pendaftaran" class="form-control" readonly value="<?= $row['nomor_pendaftaran']; ?>">
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

                                        <div class="form-group row">
                                        <label for="nama_kk" class="col-sm-2 col-form-label">Nama KK</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_kk" name="nama_kk" required value="<?= $row['nama_kk']; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                        <label for="kartu_keluarga" class="col-sm-2 col-form-label">Nomor Kartu Keluarga</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="kartu_keluarga" name="kartu_keluarga" required value="<?= $row['kartu_keluarga']; ?>">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                        <label for="nama_pemohon" class="col-sm-2 col-form-label">Nama Pemohon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_pemohon" name="nama_pemohon" required value="<?= $row['nama_pemohon']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nomor_ktp" class="col-sm-2 col-form-label">Nomor KTP</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nomor_ktp" name="nomor_ktp" onkeypress="return Angkasaja(event)" maxlength="25" required value="<?= $row['nomor_ktp']; ?>" >
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                        <label for="nama_pengantar_berkas" class="col-sm-2 col-form-label">Nama Pengantar Surat</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_pengantar_berkas" name="nama_pengantar_berkas" required value="<?= $row['nama_pengantar_berkas']; ?>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                                            <div class="col-sm-10">
                                                <textarea name="alamat" id="alamat" rows="3" class="form-control" required><?= $row['alamat']; ?></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="no_telp" class="col-sm-2 col-form-label">Nomor Telpon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="no_telp" name="no_telp" onkeypress="return Angkasaja(event)" maxlength="13" value="<?= $row['no_telp']; ?>" required>
                                            </div>
                                        </div> 

                                        <div class="form-group row">
                                            <label for="pengajuan" class="col-sm-2 col-form-label">Nama Pengajuan</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan" id="pengajuan" class="form-control select2" data-placeholder="Pilih Data Pengajuan" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan = $koneksi->query("SELECT * FROM pengajuan ORDER BY pengajuan ASC");
                                                    foreach ($pengajuan as $peng) {
                                                    ?>
                                                        <option value="<?= $peng['pengajuan'] ?>" <?php if ($row['pengajuan'] == $peng['pengajuan']) {
                                                                                                        echo "selected";
                                                                                                    } ?>><?= $peng['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pengajuan1" class="col-sm-2 col-form-label">Nama Pengajuan 2</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan1" id="pengajuan1" class="form-control select2" data-placeholder="Pilih Data Pengajuan 2" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan1 = $koneksi->query("SELECT * FROM pengajuan1 ORDER BY pengajuan1 ASC");
                                                    foreach ($pengajuan as $peng) {
                                                    ?>
                                                        <option value="<?= $peng['pengajuan'] ?>" <?php if ($row['pengajuan1'] == $peng['pengajuan']) {
                                                                                                        echo "selected";
                                                                                                    } ?>><?= $peng['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pengajuan2" class="col-sm-2 col-form-label">Nama Pengajuan 2</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan2" id="pengajuan3" class="form-control select2" data-placeholder="Pilih Data Pengajuan 2" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan2 = $koneksi->query("SELECT * FROM pengajuan2 ORDER BY pengajuan2 ASC");
                                                    foreach ($pengajuan as $peng) {
                                                    ?>
                                                        <option value="<?= $peng['pengajuan'] ?>" <?php if ($row['pengajuan2'] == $peng['pengajuan']) {
                                                                                                        echo "selected";
                                                                                                    } ?>><?= $peng['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pengajuan3" class="col-sm-2 col-form-label">Nama Pengajuan 2</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan3" id="pengajuan3" class="form-control select2" data-placeholder="Pilih Data Pengajuan 2" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan3 = $koneksi->query("SELECT * FROM pengajuan3 ORDER BY pengajuan3 ASC");
                                                    foreach ($pengajuan as $peng) {
                                                    ?>
                                                        <option value="<?= $peng['pengajuan'] ?>" <?php if ($row['pengajuan3'] == $peng['pengajuan']) {
                                                                                                        echo "selected";
                                                                                                    } ?>><?= $peng['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        
                                        <div class="form-group row">
                                            <label for="pengajuan4" class="col-sm-2 col-form-label">Nama Pengajuan 2</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan4" id="pengajuan4" class="form-control select2" data-placeholder="Pilih Data Pengajuan 2" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan4 = $koneksi->query("SELECT * FROM pengajuan4 ORDER BY pengajuan4 ASC");
                                                    foreach ($pengajuan as $peng) {
                                                    ?>
                                                        <option value="<?= $peng['pengajuan'] ?>" <?php if ($row['pengajuan4'] == $peng['pengajuan']) {
                                                                                                        echo "selected";
                                                                                                    } ?>><?= $peng['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        

                                        

                                        <div class="form-group row">
                                            <label for="berkas" class="col-sm-2 col-form-label">berkas</label>
                                            <div class="col-sm-10">
                                                <select name="berkas" id="berkas" class="form-control select2" data-placeholder="Pilih Data Berkas" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $berkas = $koneksi->query("SELECT * FROM berkas ORDER BY berkas ASC");
                                                    foreach ($berkas as $ber) {
                                                    ?>
                                                        <option value="<?= $ber['berkas'] ?>" <?php if ($row['berkas'] == $ber['berkas']) {
                                                                                                        echo "selected";
                                                                                                    } ?>><?= $ber['berkas'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="keterangan" class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="keterangan" name="keterangan" value="<?= $row['keterangan']; ?>">
                                            </div>
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
                                            <div class="col-sm-10">
                                                <select name="status" id="status" class="form-control" data-placeholder="Pilih">
                                                    <option value="verifikasi_berkas_kecamatan" <?php if ($row['status'] == "verifikasi_berkas_kecamatan") {
                                                                                        echo "selected";
                                                                                    } ?>>Verifikasi Kecamatan</option>
                                                    <option value="proses_berkas_di_disdukcapil" <?php if ($row['status'] == "proses_berkas_di_disdukcapil") {
                                                                                        echo "selected";
                                                                                    } ?>>Verifikasi Disdukcapil</option>
                                                    <option value="berkas_kurang_lengkap" <?php if ($row['status'] == "berkas_kurang_lengkap") {
                                                                                echo "selected";
                                                                            } ?>>Berkas Kurang Lengkap</option>
                                                     <option value="berkas_lengkap" <?php if ($row['status'] == "berkas_lengkap") {
                                                                                echo "selected";
                                                                            } ?>>Berkas Lengkap</option>
                                                     <option value="selesai" <?php if ($row['status'] == "selesai") {
                                                                                echo "selected";
                                                                            } ?>>Selesai</option>                                                  
                                                </select>
                                            </div>
                                        </div>

                                        <?php if ($row['tgl_selesai'] == "0000-00-00" or is_null($row['tgl_selesai'])) { ?>
                                            <div class="form-group row" id="tglselesai" style="display: none;">
                                            </div>
                                        <?php } else { ?>
                                            <div class="form-group row">
                                                <label for="tgl_selesai" class="col-sm-2 col-form-label">Tanggal Selesai</label>
                                                <div class="col-sm-10">
                                                    <input type="date" class="form-control" name="tgl_selesai" value="<?= $row['tgl_selesai']; ?>" required>
                                                </div>
                                            </div>
                                        <?php } ?>


                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer" style="background-color: white;">
                                        <a href="<?= base_url('admin/pelayanan/surat-pengantar') ?>" class="btn bg-gradient-secondary float-right"><i class="fa fa-arrow-left"> Batal</i></a>
                                        <button type="submit" name="submit" class="btn bg-gradient-primary float-right mr-2"><i class="fa fa-save"> Simpan</i></button>
                                    </div>
                                    <!-- /.card-footer -->
                                </form>
                            </div>
                            <!-- /.card -->

                        </div>
                        <!--/.col (left) -->
                    </div>
                    <!-- /.row -->
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

    <script type="text/javascript">
        $(document).ready(function() {

            // TAMPILKAN NAMA HARI INI BERDASARKAN VALUE TANNGAL PERMOHONAN
            // let NamaHari = new Array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat",
            //     "Sabtu");
            // let tgl = document.getElementById('tgl_permohonan').value;
            // let date = new Date(tgl);
            // let day = NamaHari[date.getDay()];
            // $('#hari').val(day);


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

        });

        // TAMPILKAN NAMA HARI KETIKA TANGGAL PERMOHONAN BERUBAH
        // function ChangeHari(val) {
        //     let NamaHari = new Array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat",
        //         "Sabtu");
        //     let tgl = document.getElementById('tgl_permohonan').value = val;
        //     let date = new Date(tgl);
        //     let day = NamaHari[date.getDay()];
        //     $('#hari').val(day);
        // }
    </script>

    <?php
    if (isset($_POST['submit'])) {
        $tgl_permohonan     = $_POST['tgl_permohonan'];
        $nomor_pendaftaran  =$_POST['nomor_pendaftaran'];
        $kelurahan          = $_POST['kelurahan'];
        $nama_kk            =$_POST['nama_kk'];
        $kartu_keluarga     =$_POST['kartu_keluarga'];
        $nama_pemohon       = $_POST['nama_pemohon'];
        $nomor_ktp          = $_POST['nomor_ktp'];
        $nama_pengantar_berkas = $_POST['nama_pengantar_berkas'];
        $alamat          = $_POST['alamat'];
        $no_telp         = $_POST['no_telp'];
        $pengajuan       = $_POST['pengajuan'];
        $pengajuan1       = $_POST['pengajuan1'];
        $pengajuan2       = $_POST['pengajuan2'];
        $pengajuan3       = $_POST['pengajuan3'];
        $pengajuan4       = $_POST['pengajuan4'];
        $berkas         = $_POST['berkas'];
        $keterangan      = $_POST['keterangan'];
        $id_posisi       = $_POST['id_posisi'];
        $status          = $_POST['status'];

        if ($status == "Selesai") {
            $tgl_selesai = $_POST['tgl_selesai'];

            $submit = $koneksi->query("UPDATE ahli_waris SET 
                                        tgl_permohonan = '$tgl_permohonan', 
                                        kelurahan      = '$kelurahan', 
                                        nama_kk         = '$nama_kk' ,
                                        kartu_keluarga  ='$kartu_keluarga' ,
                                        nama_pemohon    = '$nama_pemohon', 
                                        nomor_ktp       = '$nomor_ktp', 
                                        nama_pengantar_berkas= '$nama_pengantar_berkas', 
                                        alamat         = '$alamat', 
                                        no_telp         = '$no_telp',
                                        pengajuan       = '$pengajuan',
                                        pengajuan1      = '$pengajuan1',
                                        pengajuan2      = '$pengajuan2',
                                        pengajuan3       = '$pengajuan3',
                                        pengajuan4       = '$pengajuan4',
                                        berkas          ='$berkas',
                                        keterangan     = '$keterangan', 
                                        tgl_selesai    = '$tgl_selesai', 
                                        id_posisi      = 4, 
                                        status         = 'Selesai'
                                        WHERE id_ahli_waris = '$id';
                                        ");
        } else {
            $submit = $koneksi->query("UPDATE ahli_waris SET 
                                        tgl_permohonan = '$tgl_permohonan',
                                        kelurahan      = '$kelurahan',
                                        nama_kk         = '$nama_kk' ,
                                        kartu_keluarga  ='$kartu_keluarga', 
                                        nama_pemohon  = '$nama_pemohon',
                                        nomor_ktp          = '$nomor_ktp', 
                                        nama_pengantar_berkas= '$nama_pengantar_berkas', 
                                        alamat         = '$alamat', 
                                        no_telp         = '$no_telp',
                                        pengajuan       = '$pengajuan',
                                        pengajuan1      = '$pengajuan1',
                                        pengajuan2      = '$pengajuan2',
                                        pengajuan3       = '$pengajuan3',
                                        pengajuan4       = '$pengajuan4',
                                        berkas          ='$berkas',
                                        keterangan     = '$keterangan',
                                        tgl_selesai    = null,
                                        id_posisi      = '$id_posisi', 
                                        status         = '$status'
                                        WHERE id_ahli_waris = '$id';
                                        ");
        }

        // var_dump($submit, $koneksi->error);
        // die();

        if ($submit) {
            $_SESSION['pesan'] = "Data Surat Pengantar Diubah";
            echo "<script>window.location.replace('../surat-pengantar/');</script>";
        }
    }

    ?>

</body>

</html>