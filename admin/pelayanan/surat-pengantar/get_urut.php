<?php
// Query untuk mendapatkan nomor urut terbaru
$query = "SELECT MAX(nomor_pendaftaran) as max_nomor FROM tabel_pendaftaran";
$result = mysqli_query($conn, $query);
$row = mysqli_fetch_assoc($result);

// Membuat nomor urut baru dengan menambahkan 1 ke nomor urut terbesar yang sudah ada
$new_urut = sprintf('%03s', $row['max_nomor'] + 1);

// Mengembalikan nilai nomor urut baru
echo $new_urut;