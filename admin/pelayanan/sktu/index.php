<!DOCTYPE html>
<html>

<?php
include_once "../../../config/config.php";
include_once "../../../config/auth-admin.php";
include_once "../../../config/bulan.php";
include_once "../../../template/head.php";
include_once "../../../config/hari.php";

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
                            <h1 class="m-0 text-dark">Data Surat Rekomendasi Nikah</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active">Pelayanan</li>
                                <li class="breadcrumb-item active">Rekomendasi Nikah</li>
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

                        <div class="col-12">
                            <div class="card card-primary card-tabs">
                                <div class="card-header p-0 pt-1">
                                    <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill" href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">Baru</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-one-profile" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Perpanjangan</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content" id="custom-tabs-one-tabContent">

                                        <!-- TAB SKTU BARU -->
                                        <div class="tab-pane fade show active" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">

                                            <?php
                                            if (isset($_SESSION['pesan']) && $_SESSION['pesan'] <> '') {
                                            ?>
                                                <div class="alert alert-info alertinfo" role="alert">
                                                    <i class="fa fa-check-circle"> <?= $_SESSION['pesan']; ?></i>
                                                </div>
                                            <?php $_SESSION['pesan'] = '';
                                            } ?>

                                            <a href="baru/tambah" class="btn bg-gradient-indigo mb-3"><i class="fa fa-plus-circle"> Tambah Data</i></a>

                                            <div class="table-responsive">
                                                <table class="table table-bordered table-striped tabel-data">
                                                    <thead class="bg-gradient-indigo">
                                                        <tr align="center">
                                                            <th>No</th>
                                                            <th>Tanggal Permohonan</th>
                                                            <th>Nomor</th>
                                                            <th>Nama Pemohon</th>
                                                            <th>Alamat </th>
                                                            <th>Nomor Telepon</th>
                                                            <!--<th>Nama Perusahaan</th>-->
                                                            <!--<th>Masa Berlaku</th>-->
                                                            <th>Posisi</th>
                                                            <th>Status</th>
                                                            <th>Opsi</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody style="background-color: azure">
                                                        <?php
                                                        $data = $koneksi->query("SELECT * FROM sktu_baru ORDER BY id_sktu DESC");
                                                        foreach ($data as $row) {
                                                            $po = $koneksi->query("SELECT * FROM posisi_berkas WHERE id_posisi = '$row[id_posisi]'")->fetch_array();
                                                        ?>
                                                            <tr align="center">
                                                                <td width="5%"><?= $no++; ?></td>
                                                                <td>
                                                                    <?=
                                                                        date('d', strtotime($row['tgl'])) . " " . $bln[date('m', strtotime($row['tgl']))] . " " . date('Y', strtotime($row['tgl']));
                                                                    ?>
                                                                </td>
                                                                <td>
                                                                    <?php
                                                                    if ($row['id_posisi'] != 4) {
                                                                        echo "-";
                                                                    } else {
                                                                        echo $row['nomor_sktu'];
                                                                    }
                                                                    ?>
                                                                </td>
                                                                <td align="left"><?= $row['nama_pemohon'] ?></td>
                                                                <td align="left"><?= $row['nama_perusahaan'] ?></td>
                                                                <td align="left"><?= $row['no_telp'] ?></td>
                                                              <!--  <td>
                                                                 //   
                                                                 //   if (($row['masa_berlaku_awal'] == "0000-00-00" or is_null($row['masa_berlaku_awal'])) and ($row['masa_berlaku_akhir'] == "0000-00-00" or is_null($row['masa_berlaku_akhir']))) {
                                                                     //   echo "-";
                                                                 //   } else {
                                                                    //    echo tgl_indo($row['masa_berlaku_awal']) . " s/d " . tgl_indo($row['masa_berlaku_akhir']);
                                                                    }
                                                                   -->
                                                                <td><?= $po['posisi'] ?></td>
                                                                <td><?= $row['status'] ?></td>
                                                                <td width="15%">
                                                                    <a href="<?= base_url() ?>/preview/sktu-baru?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-primary btn-sm" title="Print" target="_blank"><i class="fa fa-print"></i></a>
                                                                    <a href="baru/detail?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-info btn-sm" title="Detail"><i class="fa fa-eye"></i></a>
                                                                    <a href="baru/edit?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                                    <a href="baru/hapus?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-danger btn-sm alert-hapus" data-id="<?= $row['nama_pemohon'] ?>" title="Hapus"><i class="fa fa-trash"></i></a>
                                                                </td>
                                                            </tr>
                                                        <?php } ?>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>



                                        <!-- TAB SKTU PERPANJANGAN -->
                                        <div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">
                                            <?php
                                            if (isset($_SESSION['pesan1']) && $_SESSION['pesan1'] <> '') {
                                            ?>
                                                <div class="alert alert-info alertinfo" role="alert">
                                                    <i class="fa fa-check-circle"> <?= $_SESSION['pesan1']; ?></i>
                                                </div>
                                            <?php $_SESSION['pesan1'] = '';
                                            } ?>

                                            <a href="perpanjangan/tambah" class="btn bg-gradient-indigo mb-3"><i class="fa fa-plus-circle"> Tambah Data</i></a>

                                            <div class="table-responsive">
                                                <table class="table table-bordered table-striped tabel-data">
                                                    <thead class="bg-gradient-indigo">
                                                        <tr align="center">
                                                            <th>No</th>
                                                            <th>Tanggal Permohonan</th>
                                                            <th>Nomor</th>
                                                            <th>Nama Pemohon</th>
                                                            <th>Nama Perusahaan</th>
                                                            <th>Masa Berlaku</th>
                                                            <th>Posisi</th>
                                                            <th>Status</th>
                                                            <th>Opsi</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody style="background-color: azure">
                                                        <?php
                                                        $no1 = 1;
                                                        $data = $koneksi->query("SELECT * FROM sktu_perpanjangan ORDER BY id_sktu DESC");
                                                        foreach ($data as $row) {
                                                            $po = $koneksi->query("SELECT * FROM posisi_berkas WHERE id_posisi = '$row[id_posisi]'")->fetch_array();
                                                        ?>
                                                            <tr align="center">
                                                                <td width="5%"><?= $no1++; ?></td>
                                                                <td>
                                                                    <?=
                                                                        date('d', strtotime($row['tgl'])) . " " . $bln[date('m', strtotime($row['tgl']))] . " " . date('Y', strtotime($row['tgl']));
                                                                    ?>
                                                                </td>
                                                                <td><?= $row['nomor_sktu']; ?></td>
                                                                <td align="left"><?= $row['nama_pemohon'] ?></td>
                                                                <td align="left"><?= $row['nama_perusahaan'] ?></td>
                                                                <td>
                                                                    <?php
                                                                    if (($row['masa_berlaku_awal'] == "0000-00-00" or is_null($row['masa_berlaku_awal'])) and ($row['masa_berlaku_akhir'] == "0000-00-00" or is_null($row['masa_berlaku_akhir']))) {
                                                                        echo "-";
                                                                    } else {
                                                                        echo tgl_indo($row['masa_berlaku_awal']) . " s/d " . tgl_indo($row['masa_berlaku_akhir']);
                                                                    }
                                                                    ?>
                                                                </td>
                                                                <td><?= $po['posisi'] ?></td>
                                                                <td><?= $row['status'] ?></td>
                                                                <td width="15%">
                                                                    <a href="<?= base_url() ?>/preview/sktu-ppj?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-primary btn-sm" title="Print" target="_blank"><i class="fa fa-print"></i></a>
                                                                    <a href="perpanjangan/detail?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-info btn-sm" title="Detail"><i class="fa fa-eye"></i></a>
                                                                    <a href="perpanjangan/edit?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                                    <a href="perpanjangan/hapus?id=<?= encryptor('encrypt', $row['id_sktu']); ?>" class="btn bg-gradient-danger btn-sm alert-hapus" data-id="<?= $row['nama_pemohon'] ?>" title="Hapus"><i class="fa fa-trash"></i></a>
                                                                </td>
                                                            </tr>
                                                        <?php } ?>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.card -->
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->
                </div>
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
            $('.tabel-data').DataTable();
        });
    </script>

</body>

</html>