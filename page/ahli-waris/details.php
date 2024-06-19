<?php
include_once "../../config/config.php";


  if (isset($_POST['submit'])) {
    $countryName = $_POST['search'];

    $sql = 'SELECT * FROM ahli_waris WHERE id_ahli_waris = :nomor_pendaftaran';
    $stmt = $koneksi->prepare($sql);
    $stmt->execute(['id_ahli_waris' => $countryName]);
    $row = $stmt->fetch();
  } else {
    header('location: .');
    exit();
  }
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Details</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css">
</head>

<body>
  <div class="container">
    <div class="row mt-5">
      <div class="col-5 mx-auto">
        <div class="card shadow text-center">
          <div class="card-header">
            <h1><?= $row['nomor_pendaftaran'] ?></h1>
          </div>
          <div class="card-body">
            <h4><b>Country Code :</b> <?= $row['id_ahli_waris'] ?></h4>
            <h4><b>City :</b> <?= $row['nomor_pendaftaran'] ?></h4>
            <h4><b>Country ID :</b> <?= $row['nama_pemohon'] ?></h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>