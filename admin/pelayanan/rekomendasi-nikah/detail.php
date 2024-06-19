<!DOCTYPE html>
<html>

<?php
include_once "../../../config/config.php";
include_once "../../../config/auth-admin.php";
include_once "../../../config/bulan.php";
include_once "../../../template/head.php";

$id   = encryptor('decrypt', $_GET['id']);
$data = $koneksi->query("SELECT * FROM iumk WHERE id_iumk = '$id'");
$row  = $data->fetch_array();

$po = $koneksi->query("SELECT * FROM posisi_berkas WHERE id_posisi = '$row[id_posisi]'")->fetch_array();
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
                            <h1 class="m-0 text-dark">Detail Rekomendasi Nikah</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active">Pelayanan</li>
                                <li class="breadcrumb-item active">Rekomendasi Nikah</li>
                                <li class="breadcrumb-item active">Detail</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

           <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <form class="form-horizontal" method="POST" action="" enctype="multipart/form-data">
                    <div class="row">

                    <div class="col-md-12">
                                <!-- Horizontal Form -->
                                <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Detail Data</h3>
                                    <div class="card-tools">
                                        <a href="<?= base_url('admin/pelayanan/rekomendasi-nikah') ?>" class="btn bg-gradient-secondary btn-tool"><i class="fa fa-arrow-left"> Kembali</i></a>
                                    </div>
                                </div>
                                    <div class="card-body" style="background-color: azure;">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <tr>
                                                <th width="30%">Tanggal Permohonan</th>
                                                <td width="2%">:</td>
                                                <td>
                                                    <?=
                                                   date('Y-m-d-H:i');
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Nomor</th>
                                                <td width="2%">:</td>
                                                <td>
                                                    <?php echo $row['nomor_iumk']; ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Nomor Pendaftaran</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['nomor_pendaftaran'] ?></td>
                                            </tr>

                                            <tr>
                                                <th width="30%">Tanggal Nikah </th>
                                                <td width="2%">:</td>
                                                <td><?= $row['tgl_nikah'] ?></td>
                                            </tr>

                                            <tr>
                                                <th width="30%">Kelurahan</th>
                                                <td width="2%">:</td>
                                                <td> <?= $row['kelurahan'] ?></td>
                                            </tr>
                                            
                                            <tr>
                                                <th width="30%">Nama Calon Istri</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['nama_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">NIK</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['nik_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Tempat Lahir</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['tempat_lahir_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Tanggal Lahir </th>
                                                <td width="2%">:</td>
                                                <td><?= $row['tanggal_lahir_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Kewarganegaraan</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['kewarganegaraan_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Pekerjaan</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['pekerjaan_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Agama</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['agama_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Status</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['status_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Nomor Telepon</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['no_telp_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Keterangan</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['keterangan_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Alamat</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['alamat_istri'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Nama Calon Suami</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['nama_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">NIK</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['nik_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Tempat Lahir</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['tempat_lahir_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Kewarganegaraan</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['kewarganegaraan_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Pekerjaan</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['pekerjaan_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Agama</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['agama_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Status</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['status_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Alamat</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['alamat_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Nomor Telepon</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['no_telp_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Keterangan</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['keterangan_suami'] ?></td>
                                            </tr>
                                            <tr>
                                                <th width="30%">Email</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['email'] ?></td>
                                            </tr>


                                          <!--  <tr>
                                                <th width="30%">Tanggal Selesai</th>
                                                <td width="2%">:</td>
                                                <td>
                                                    <?php
                                                    if ($row['tgl_selesai'] == "0000-00-00" or is_null($row['tgl_selesai'])) {
                                                        echo "-";
                                                    } else {
                                                        echo date('d', strtotime($row['tgl_selesai'])) . " " . $bln[date('m', strtotime($row['tgl_selesai']))] . " " . date('Y', strtotime($row['tgl_selesai']));
                                                    }
                                                    ?>
                                                </td>-->
                                            <tr>
                                                <th width="30%">Posisi Berkas</th>
                                                <td width="2%">:</td>
                                                <td><?= $po['posisi'] ?></td>
                                            </tr>
                                           <!-- <tr>
                                                <th width="30%">Status</th>
                                                <td width="2%">:</td>
                                                <td><?= $row['status'] ?></td>
                                            </tr>-->
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        

                        


                          

                        </div>

                    </div>
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

    <div class="modal fade" id="modal-preview">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Preview</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">

                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    <!-- jQuery -->
    <?php include_once "../../../template/script.php"; ?>

    <script>
        $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox({
                alwaysShowClose: true,
                width: 1105,
                height: 750
            });
        });
    </script>

    <script>
        $(function() {
            $(document).on('click', '.lihatfile', function(e) {
                e.preventDefault();
                // $("#modal-preview").modal('show');
                $('#modal-preview').modal({
                    backdrop: 'static',
                    keyboard: false
                })
                $.post('view.php', {
                        id: $(this).attr('data-id')
                    },
                    function(html) {
                        $(".modal-body").html(html);
                    }
                );
            });
        });
    </script>

</body>

</html>