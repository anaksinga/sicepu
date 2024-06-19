<?php
function base_url($url = null)
{
	$base_url = "http://sicepu-metrokota.com";
	if ($url != null) {
		return $base_url . "/" . $url;
	} else {
		return $base_url;
	}
}

// FUNGSI ENKRIPSI DAN DEKRIPSI ID UNTUK EDIT DAN HAPUS
function encryptor($action, $string)
{
	$output = false;

	$encrypt_method = "AES-256-CBC";
	//pls set your unique hashing key
	$secret_key = 'ivan';
	$secret_iv = 'ivan123';

	// hash
	$key = hash('sha256', $secret_key);

	// iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
	$iv = substr(hash('sha256', $secret_iv), 0, 16);

	//do the encyption given text/string/number
	if ($action == 'encrypt') {
		$output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
		$output = base64_encode($output);
	} else if ($action == 'decrypt') {
		//decrypt the given text/string/number
		$output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
	}

	return $output;
}

// KONEKSI DATABASE

function connection(){

$host = "localhost";
$user = "u899271368_sicepu";
$password = "Metrokota1990";
$name = "u899271368_sicepu";


$koneksi = mysqli_connect($host, $user, $password, $name);

if (!$koneksi) {
	die("Gagal Terkoneksi" . mysqli_connect_errno() . " - " . mysqli_connect_error());
	exit();
}
return $koneksi;

}

$host = "localhost";
$user = "u899271368_sicepu";
$password = "Metrokota1990";
$name = "u899271368_sicepu";


$koneksi = mysqli_connect($host, $user, $password, $name);

if (!$koneksi) {
	die("Gagal Terkoneksi" . mysqli_connect_errno() . " - " . mysqli_connect_error());
	//exit();
}

// ZONA WAKTU INDONESIA
date_default_timezone_set('Asia/jakarta');

session_start();
$no = 1;
