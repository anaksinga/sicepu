<!DOCTYPE html>
<html>

<?php
include_once "../../../config/config.php";
include_once "../../../config/bulan.php";
include_once "../../../config/auth-admin.php";
include_once "../../../template/head.php";

$ceknosktu    = $koneksi->query("SELECT * FROM nomor_urut_sktu")->fetch_array();
$nourut       = $ceknosktu['nomor_urut'];


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
                            <h1 class="m-0 text-dark">Tambah Surat Pengantar</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item">Pelayanan</li>
                                <li class="breadcrumb-item">Surat Perngantar</li>
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
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-12">
                            <!-- Horizontal Form -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Tambah Data</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form class="form-horizontal" method="POST" action="">
                                    <div class="card-body" style="background-color: azure;">

                                        <div class="form-group row">
                                            <label for="tgl_permohonan" class="col-sm-2 col-form-label">Tanggal</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" id="tgl_permohonan" name="tgl_permohonan" required value="<?= date('Y-m-d') ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="nomor_pendaftaran" class="col-sm-2 col-form-label">Nomor Pendaftaran</label>
                                            <div class="col-sm-10">
                                                <?php 
                                                function acakangkahuruf($panjang)
                                                {
                                                    $karakter= 'ABCDEFGHIJKL1234567890';
                                                    $string = '';
                                                    for ($i = 0; $i < $panjang; $i++) {
                                                  $pos = rand(0, strlen($karakter)-1);
                                                  $string .= $karakter{$pos};
                                                    }
                                                    return $string;
                                                }
                                                ?>
                                                <input type="text" name="nomor_pendaftaran" id="nomor_pendaftaran" class="form-control" readonly value="<?= acakangkahuruf(5) ?>">
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

                                        <div class="form-group row">
                                            <label for="nama_kk" class="col-sm-2 col-form-label">Nama KK</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_kk" name="nama_kk" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="kartu_keluarga" class="col-sm-2 col-form-label">Nomor KK</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="kartu_keluarga" name="kartu_keluarga" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nama_pemohon" class="col-sm-2 col-form-label">Nama Pemohon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_pemohon" name="nama_pemohon" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="nomor_ktp" class="col-sm-2 col-form-label">Nomor KTP</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nomor_ktp" name="nomor_ktp" onkeypress="return Angkasaja(event)" maxlength="16" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="nama_pengantar_berkas" class="col-sm-2 col-form-label">Nama Pengantar Berkas</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="nama_pengantar_berkas" name="nama_pengantar_berkas" required>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                                            <div class="col-sm-10">
                                                <textarea name="alamat" id="alamat" rows="3" class="form-control" required></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="no_telp" class="col-sm-2 col-form-label">Nomor Telpon</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="no_telp" name="no_telp" onkeypress="return Angkasaja(event)" maxlength="15" required>
                                            </div>
                                        </div> 

                                        <div class="form-group row">
                                            <label for="pengajuan" class="col-sm-2 col-form-label">Nama Pengajuan</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan" id="pengajuan" class="form-control select2" data-placeholder="Pilih Data Pengajuan" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan = $koneksi->query("SELECT * FROM pengajuan ORDER BY pengajuan ASC");
                                                    foreach ($pengajuan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['pengajuan'] ?>"><?= $kel['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pengajuan1" class="col-sm-2 col-form-label">Nama Pengajuan 2</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan1" id="pengajuan1" class="form-control select2" data-placeholder="Pilih Data Pengajuan" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan1 = $koneksi->query("SELECT * FROM pengajuan1 ORDER BY pengajuan1 ASC");
                                                    foreach ($pengajuan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['pengajuan'] ?>"><?= $kel['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label for="pengajuan2" class="col-sm-2 col-form-label">Nama Pengajuan 3</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan2" id="pengajuan2" class="form-control select2" data-placeholder="Pilih Data Pengajuan" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan2 = $koneksi->query("SELECT * FROM pengajuan2 ORDER BY pengajuan2 ASC");
                                                    foreach ($pengajuan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['pengajuan'] ?>"><?= $kel['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pengajuan3" class="col-sm-2 col-form-label">Nama Pengajuan 4</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan3" id="pengajuan3" class="form-control select2" data-placeholder="Pilih Data Pengajuan" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan3 = $koneksi->query("SELECT * FROM pengajuan3 ORDER BY pengajuan3 ASC");
                                                    foreach ($pengajuan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['pengajuan'] ?>"><?= $kel['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="pengajuan4" class="col-sm-2 col-form-label">Nama Pengajuan 5</label>
                                            <div class="col-sm-10">
                                                <select name="pengajuan4" id="pengajuan4" class="form-control select2" data-placeholder="Pilih Data Pengajuan" style="width: 100%;">
                                                    <option value=""></option>
                                                    <?php
                                                    $pengajuan4 = $koneksi->query("SELECT * FROM pengajuan4 ORDER BY pengajuan4 ASC");
                                                    foreach ($pengajuan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['pengajuan'] ?>"><?= $kel['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        

                                        <div class="form-group row">
                                            <label for="berkas" class="col-sm-2 col-form-label">Berkas</label>
                                            <div class="col-sm-10">
                                                <select name="berkas" id="berkas" class="form-control select2" data-placeholder="Pilih Berkas" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $berkas = $koneksi->query("SELECT * FROM berkas ORDER BY berkas ASC");
                                                    foreach ($berkas as $ber) {
                                                    ?>
                                                        <option value="<?= $ber['berkas'] ?>"><?= $ber['berkas'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

       
                                        <div class="form-group row">
                                            <label for="keterangan" class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="keterangan" name="keterangan" placeholder="Boleh Dikosongkan">
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
                                                        <option value="<?= $po['id_posisi'] ?>"><?= $po['posisi'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="status" class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-sm-10">
                                                <select name="status" id="status" class="form-control" data-placeholder="Pilih">
                                                    <option value="verifikasi_berkas_kecamatan" selected>Verifikasi Berkas Kecamatan</option>
                                                    <option value="proses_berkas_di_disdukcapil">Proses Berkas di Disdukcapil</option>
                                                    <option value="berkas_kurang_lengkap">Berkas Kurang Lengkap</option>
                                                    <option value="berkas_lengkap">Berkas Lengkap</option>
                                                    <option value="selesai">Selesai/Bisa diambil</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row" id="tglselesai" style="display: none;">
                                        </div>


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
//$char= 'ABC';
//$kodeotomatis = $nourut;
//$nomor_sktu   = $kodeotomatis;
// no urut iumk++
//$notambah = $nourut+1;

//if ($notambah < '1111111111') {
   // $nourutbaru = '11' . $notambah;
//} else {
   // $nourutbaru = $notambah;
//}


//$submit = $koneksi->query("UPDATE nomor_urut_sktu SET nomor_urut = '$nourutbaru'");
//-- no urut iumk++
//$tgl_permohonan= isset($_POST['tgl_permohonan']) ? $_POST['tgl_permohonan'] : '';;
//$tgl_permohonan = $_POST['tgl_permohonan'];
$id_posisi    = 1;
    

    if (isset($_POST['submit'])) {
        $tgl_permohonan  = $_POST['tgl_permohonan'];
        $nomor_pendaftaran  = $_POST['nomor_pendaftaran'];
        $kelurahan       = $_POST['kelurahan'];
        $nama_kk        =$_POST['nama_kk'];
        $kartu_keluarga  =$_POST['kartu_keluarga'];
        $nama_pemohon   = $_POST['nama_pemohon'];
        $nomor_ktp          = $_POST['nomor_ktp'];
        $nama_pengantar_berkas = $_POST['nama_pengantar_berkas'];
        $alamat          = $_POST['alamat'];
        $no_telp         = $_POST['no_telp'];
        $pengajuan       = $_POST['pengajuan'];
        $pengajuan1       = $_POST['pengajuan1'];
        $pengajuan2       = $_POST['pengajuan2'];
        $pengajuan3       = $_POST['pengajuan3'];
        $pengajuan4       = $_POST['pengajuan4'];
        $berkas            = $_POST['berkas'];
        $keterangan      = $_POST['keterangan'];
        $id_posisi       = $_POST['id_posisi'];
        $status          = $_POST['status'];
        
        if ($status == "Selesai") {
            $tgl_selesai = $_POST['tgl_selesai'];

            $submit = $koneksi->query("INSERT INTO ahli_waris VALUES (null, '$tgl_permohonan', '$nomor_pendaftaran','$kelurahan','$nama_kk','$kartu_keluarga', '$nama_pemohon', '$nomor_ktp', '$nama_pengantar_berkas', '$nomor_ktp', '$alamat', '$no_telp','$pengajuan','$pengajuan1','$pengajuan2','$pengajuan3','$pengajuan4','$berkas', '$keterangan', '$tgl_selesai', 4, '$status')");
        } else {
            $submit = $koneksi->query("INSERT INTO ahli_waris VALUES (null, '$tgl_permohonan', '$nomor_pendaftaran','$kelurahan','$nama_kk','$kartu_keluarga', '$nama_pemohon',' $nomor_ktp', '$nama_pengantar_berkas', '$alamat', '$no_telp','$pengajuan','$pengajuan1','$pengajuan2','$pengajuan3','$pengajuan4','$berkas', '$keterangan', null, '$id_posisi', '$status')");
        }


        if ($submit) {

            $_SESSION['pesan'] = "Data Surat Pernyataan Surat Pengantar Ditambahkan";
            echo "<script>window.location.replace('../surat-pengantar/');</script>";
        }
    }

    ?>

</body>

</html>