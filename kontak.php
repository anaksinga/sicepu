<!DOCTYPE html>
<html lang="en">

<?php
include_once "config/config.php";
include_once "template/ui/head.php";
?>

<body>

    <!-- ======= Header ======= -->
    <?php include_once "template/ui/header.php"; ?>
    <!-- End Header -->

    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Kontak</h2>
                    <ol>
                        <li><a href="<?= base_url(); ?>">Home</a></li>
                        <li>Kontak</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact section-bg">
            <div class="container">

                <div class="section-title">
                    <h2>Kontak Kami</h2>
                    <p>Informasi Kontak Kecamatan Metro Pusat</p>
                </div>

                <div class="row mt-5 justify-content-center">

                    <div class="col-lg-12">

                        <div class="info-wrap">
                            <div class="row">
                                <div class="col-lg-3 info">
                                    <i class="icofont-google-map"></i>
                                    <h4>Lokasi:</h4>
                                    <p>
                                        <a href="https://maps.app.goo.gl/QF1csYVnayBx82edA">
                                            Jl. metro
                                        </a>
                                    </p>
                                </div>

                                <div class="col-lg-3 info mt-4 mt-lg-0">
                                    <i class="icofont-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>kecamatan.metropusat@gmail.com</p>
                                </div>

                                <div class="col-lg-3 info mt-4 mt-lg-0">
                                    <i class="icofont-web"></i>
                                    <h4>Website:</h4>
                                    <p><a href="https://metrokota.go.id/">metrokota.go.id</a></p>
                                </div>

                                <div class="col-lg-3 info mt-4 mt-lg-0">
                                    <i class="icofont-phone"></i>
                                    <h4>Telepon:</h4>
                                    <p>(0812) 7022 3900</p>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </section>
        <!-- End Contact Section -->

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <?php include_once "template/ui/footer.php"; ?>
    <!-- End Footer -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


    <?php include_once "template/ui/script.php"; ?>

</body>

</html>