<?php
include_once "../../config/config.php";
include_once "../../config/bulan.php";
// include_once "../../config/auth-mas.php";
include_once "../../template/ui/head.php";

  if (isset($_POST['query'])) {
    $inpText = $_POST['query'];
    $sql = 'SELECT ahli_waris FROM id_ahli_waris WHERE nomor_pendaftaran LIKE :nomor_pendaftaran';
    $stmt = $koneksi->prepare($sql);
    $stmt->execute(['nomor_pendaftaran' => '%' . $inpText . '%']);
    $result = $stmt->fetchAll();

    if ($result) {
      foreach ($result as $row) {
        echo '<a href="#" class="list-group-item list-group-item-action border-1">' . $row['id_ahli_waris'] . '</a>';
      }
    } else {
      echo '<p class="list-group-item border-1">No Record</p>';
    }
  }
?>