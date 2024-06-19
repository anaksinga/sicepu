<?php
function aktif($pageSekarang)
{
    $namaHalaman = $_SERVER['PHP_SELF'];
    $namaArray = explode('/', $namaHalaman);
    $jumlah = count($namaArray);
    $namaHalaman = $namaArray[$jumlah - 2];
    if ($pageSekarang == $namaHalaman) {
        echo 'active';
    }
}

$namaHalaman = $_SERVER['PHP_SELF'];
$namaArray   = explode('/', $namaHalaman);
$jumlah      = count($namaArray);
$namaHalaman = $namaArray[$jumlah - 2];
$menumasterdata  = [
    "dasar-hukum-sktu",
    "dasar-hukum-iumk",
    "lampiran-sktu",
    "lampiran-iumk",
    "kelurahan",
    "pengajuan",
    "camat",
    "role",
    "user",
    "kegiatan-usaha",
    "masyarakat",
    "nomor-urut-sktu",
    "nomor-urut-iumk",
    "blanko"
];

$menupelayanan  = [
    "sktu",
    "baru", //sub folder sktu
    "perpanjangan", //sub folder sktu
    "iumk",
    "ahli-waris",
    "rpp",
    "legalisasi-imb",
    "legalisasi-proposal",
    "legalisasi-izin-tower"
];

$menusktu = [
    "sktu",
    "baru",
    "perpanjangan"
];

// link logo
if ($_SESSION['role'] == "Admin") {
    $logo_link = base_url('admin');
} elseif ($_SESSION['role'] == "Kasi") {
    $logo_link = base_url('kasi');
} elseif ($_SESSION['role'] == "Sekcam") {
    $logo_link = base_url('sekcam');
} elseif ($_SESSION['role'] == "Camat") {
    $logo_link = base_url('camat');
} elseif ($_SESSION['role'] == "Staf") {
    $logo_link = base_url('staf');
}


?>

<aside class="main-sidebar sidebar-light-info navbar-light elevation-1">
    <!-- Brand Logo -->
    <a href="<?= $logo_link; ?>" class="brand-link" style="background-color: deepskyblue;">
        <img src="<?= base_url() ?>/assets/img/logometro.png" alt="Logo Metro" class="brand-image ml-3 mr-2" style="text-align: center; width: 25px;">
        <span class="brand-text font-weight-light"><strong>SI CEPU</strong></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="<?= base_url() ?>/assets/img/user.png" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block"><?= $_SESSION['nama_user']; ?></a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                with font-awesome or any other icon font library -->

                <li class="nav-item">
                    <a href="<?= $logo_link; ?>" class="nav-link <?php if ($_SESSION['role'] == "Admin") {
                                                                        echo aktif("admin");
                                                                    } elseif ($_SESSION['role'] == "Kasi") {
                                                                        echo aktif("kasi");
                                                                    } elseif ($_SESSION['role'] == "Sekcam") {
                                                                        echo aktif("sekcam");
                                                                    } elseif ($_SESSION['role'] == "Camat") {
                                                                        echo aktif("camat");
                                                                    } elseif ($_SESSION['role'] == "Staf") {
                                                                        echo aktif("staf");
                                                                    } ?>">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>


                <!-- ADMIN -->

                <?php if ($_SESSION['role'] == "Admin") : ?>

                    <!-- MENU MASTER DATA -->
                    <li class="nav-item has-treeview <?php if (in_array($namaHalaman, $menumasterdata) === true) {
                                                            echo "menu-open";
                                                        } ?>">
                        <a href="#" class="nav-link <?php if (in_array($namaHalaman, $menumasterdata) === true) {
                                                        echo "active";
                                                    } ?>">
                            <i class=" nav-icon fas fa-database"></i>
                            <p>
                                Data Master
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                          <!-- <li class="nav-item">
                                <a href="<?= base_url('admin/dasar-hukum-sktu') ?>" class="nav-link <?= aktif("dasar-hukum-sktu"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Dasar Hukum Surat Pengantar</p>
                                </a>
                            </li>-->
                           <!-- <li class="nav-item">
                                <a href="<?= base_url('admin/dasar-hukum-iumk') ?>" class="nav-link <?= aktif("dasar-hukum-iumk"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Dasar Hukum Rekomendasi Nikah</p>
                                </a>
                            </li>-->
                            <!--<li class="nav-item">
                                <a href="<?= base_url('admin/lampiran-sktu') ?>" class="nav-link <?= aktif("lampiran-sktu"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Lampiran SKTU</p>
                                </a>
                            </li>-->
                           <!-- <li class="nav-item">
                                <a href="<?= base_url('admin/lampiran-iumk') ?>" class="nav-link <?= aktif("lampiran-iumk"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Lampiran Rekomendasi Nikah</p>
                                </a>
                            </li>-->
                            <li class="nav-item">
                                <a href="<?= base_url('admin/kelurahan') ?>" class="nav-link <?= aktif("kelurahan"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Kelurahan</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('admin/berkas') ?>" class="nav-link <?= aktif("berkas"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Berkas</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('admin/pengajuan') ?>" class="nav-link <?= aktif("pengajuan"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Pengajuan</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="<?= base_url('admin/agama') ?>" class="nav-link <?= aktif("agama"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Agama</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="<?= base_url('admin/status') ?>" class="nav-link <?= aktif("status_nikah"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Status</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('admin/camat') ?>" class="nav-link <?= aktif("camat"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Camat</p>
                                </a>
                            </li>
                            <!-- <li class="nav-item">
                                <a href="<?= base_url('admin/role') ?>" class="nav-link <?= aktif("role"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Role</p>
                                </a>
                            </li> -->
                            <li class="nav-item">
                                <a href="<?= base_url('admin/user') ?>" class="nav-link <?= aktif("user"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>User</p>
                                </a>
                            </li>
                           <!-- <li class="nav-item">
                                <a href="<?= base_url('admin/masyarakat') ?>" class="nav-link <?= aktif("masyarakat"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Masyarakat</p>
                                </a>
                            </li>-->
                          <!-- <li class="nav-item">
                                <a href="<?= base_url('admin/nomor-urut-sktu') ?>" class="nav-link <?= aktif("nomor-urut-sktu"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Nomor Surat Pengantar</p>
                                </a>
                            </li>-->
                            <li class="nav-item">
                                <a href="<?= base_url('admin/nomor-urut-rekomendasi-nikah') ?>" class="nav-link <?= aktif("nomor-urut-rekomendasi-nikah"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Nomor Rekomendasi Nikah</p>
                                </a>
                            </li>
                            <!--<li class="nav-item">
                                <a href="<?= base_url('admin/blanko') ?>" class="nav-link <?= aktif("blanko"); ?>">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Blanko</p>
                                </a>
                            </li>-->
                        </ul>
                    </li>

                <?php endif ?>

                <?php if ($_SESSION['role'] == "Admin") { ?>
                    <!-- MENU PELAYANAN -->
                    <li class="nav-item has-treeview <?php if (in_array($namaHalaman, $menupelayanan) === true) {
                                                            echo "menu-open";
                                                        } ?>">
                        <a href="#" class="nav-link <?php if (in_array($namaHalaman, $menupelayanan) === true) {
                                                        echo "active";
                                                    } ?>">
                            <i class="nav-icon fas fa-pencil-alt"></i>
                            <p>
                                Pelayanan
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                         
                            <li class="nav-item">
                                <a href="<?= base_url('admin/pelayanan/rekomendasi-nikah') ?>" class="nav-link <?= aktif("rekomendasi-nikah"); ?>" title="Rekomendasi Nikah">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Rekomendasi Nikah</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('admin/pelayanan/surat-pengantar') ?>" class="nav-link <?= aktif("surat-pengantar"); ?>" title="Surat Pengant">
                                    <i class="fa fa-minus nav-icon"></i>
                                    <p>Rekomendasi Surat Pengantar</p>
                                </a>
                           
                        </ul>
                    </li>





                    <!-- ROLE KASI -->
               

                <?php } ?>


                <li class="nav-item">
                    <a href="#" class="nav-link" data-toggle="modal" data-target="#modal-laporan">
                        <i class="nav-icon fas fa-file"></i>
                        <p>
                            Laporan
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>


<!-- MODAL LAPORAN -->
<div class="modal fade" id="modal-laporan">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Print Laporan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">

                <div id="accordion">
                   

                    <!-- Laporan Rekomendasi Nikah -->
                    <div class="card card-navy">
                        <div class="card-header">
                            <h4 class="card-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#lap-iumk">
                                Laporan Rekomendasi Nikah
                                </a>
                            </h4>
                        </div>
                        <div id="lap-iumk" class="panel-collapse collapse">
                            <div class="card-body">

                                <form role="form" action="<?= base_url('laporan/lap-rekomendasi-nikah') ?>" method="POST" target="blank">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Tanggal</label>
                                                <select name="tgl" id="tgl" class="form-control">
                                                    <option value="">--Pilih Tanggal--</option>
                                                    <?php
                                                    for ($i = 1; $i <= 31; $i++) :
                                                        $tglnow = substr('0' . $i, -2);
                                                    ?>
                                                    <option value="<?= $tglnow; ?>"><?= $tglnow; ?></option>
                                                    <?php endfor ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Bulan</label>
                                                <select name="bulan" id="bulan" class="form-control">
                                                    <option value="">--Pilih Bulan--</option>
                                                    <option value="01">Januari</option>
                                                    <option value="02">Februari</option>
                                                    <option value="03">Maret</option>
                                                    <option value="04">April</option>
                                                    <option value="05">Mei</option>
                                                    <option value="06">Juni</option>
                                                    <option value="07">Juli</option>
                                                    <option value="08">Agustus</option>
                                                    <option value="09">September</option>
                                                    <option value="10">Oktober</option>
                                                    <option value="11">November</option>
                                                    <option value="12">Desember</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Tahun</label>
                                                <select name="tahun" id="tahun" class="form-control" required>
                                                    <?php
                                                    $tnow = date('Y');
                                                    for ($i = $tnow; $i >= 2020; $i--) :
                                                    ?>
                                                        <option value="<?= $i; ?>"><?= $i; ?></option>
                                                    <?php endfor ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label> </label> <br>
                                                <button type="submit" name="print" class="btn btn-primary mt-2"><i class="fa fa-print"></i> Print</button>
                                            </div>
                                        </div>

                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>



                    <!-- Surat Pengantar -->
                    <div class="card card-navy">
                        <div class="card-header">
                            <h4 class="card-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#lap-ahli-waris">
                                    Laporan Surat Pengantar Kartu Keluarga
                                </a>
                            </h4>
                        </div>
                        <div id="lap-ahli-waris" class="panel-collapse collapse">
                            <div class="card-body">

                                <form role="form" action="<?= base_url('laporan/lap-surat-pengantar') ?>" method="POST" target="blank">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Tanggal</label>
                                                <select name="tgl" id="tgl" class="form-control">
                                                    <option value="">--Pilih Tanggal--</option>
                                                    <?php
                                                    for ($i = 1; $i <= 31; $i++) :
                                                        $tglnow = substr('0' . $i, -2);
                                                    ?>
                                                    <option value="<?= $tglnow; ?>"><?= $tglnow; ?></option>
                                                    <?php endfor ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Bulan</label>
                                                <select name="bulan" id="bulan" class="form-control">
                                                    <option value="">--Pilih Bulan--</option>
                                                    <option value="01">Januari</option>
                                                    <option value="02">Februari</option>
                                                    <option value="03">Maret</option>
                                                    <option value="04">April</option>
                                                    <option value="05">Mei</option>
                                                    <option value="06">Juni</option>
                                                    <option value="07">Juli</option>
                                                    <option value="08">Agustus</option>
                                                    <option value="09">September</option>
                                                    <option value="10">Oktober</option>
                                                    <option value="11">November</option>
                                                    <option value="12">Desember</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Tahun</label>
                                                <select name="tahun" id="tahun" class="form-control" required>
                                                    <?php
                                                    $tnow = date('Y');
                                                    for ($i = $tnow; $i >= 2020; $i--) :
                                                    ?>
                                                        <option value="<?= $i; ?>"><?= $i; ?></option>
                                                    <?php endfor ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Kelurahan*</label>
                                                <select name="kelurahan" id="kelurahan" class="form-control select2" data-placeholder="Pilih Kelurahan" style="width: 100%;">
                                                    <option value="">--Pilih Kelurahan--</option>
                                                    <?php
                                                    $kelurahan = $koneksi->query("SELECT * FROM kelurahan ORDER BY kelurahan ASC");
                                                        
                                                    foreach ($kelurahan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['kelurahan'] ?>"><?= $kel['kelurahan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Pengajuan*</label>
                                                <select name="pengajuan" id="pengajuan" class="form-control select2" data-placeholder="Pilih Data Pengajuan" style="width: 100%;">
                                                    <option value="">--Pilih Pengajuan--</option>
                                                    <?php
                                                    $pengajuan = $koneksi->query("SELECT * FROM pengajuan ORDER BY pengajuan ASC");
                                                    foreach ($pengajuan as $kel) {
                                                    ?>
                                                        <option value="<?= $kel['pengajuan'] ?>"><?= $kel['pengajuan'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label> </label> <br>
                                                <button type="submit" name="print" class="btn btn-primary mt-2"><i class="fa fa-print"></i> Print</button>
                                            </div>
                                        </div>

                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
            </div>
        </div>
    </div>
</div>
<!-- MODAL LAPORAN -->