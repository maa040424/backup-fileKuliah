<?php 
require "../function/init.php";

$hari = get('hari');

$conn = connect_DB();
$daftarDokter = $conn->query("SELECT DISTINCT nama_dokter FROM praktek WHERE hari = '$hari';");

foreach($daftarDokter as $item) {
	echo "<option value='$item[nama_dokter]'>$item[nama_dokter]</option>";
}