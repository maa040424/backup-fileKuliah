<?php
require "../function/init.php";

if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

$id = get('id');
$data = get('data');

if ($data == "homecare") {
  setSuccess("Data Berhasil Dihapus!");
  query_delete('homecare', "id_hc = '$id'");
  direct("homecare.php");
} else if ($data == "ambulan") {
  setSuccess("Data Ambulan Berhasil Dihapus!");
  query_delete('ambulan', "id_ambulan = '$id'");
  direct("ambulan.php");
} else if ($data == "praktek") {
  $file = query_select('praktek', ['where' => "id_praktek = '$id'"])[0]['img'];
  unlink("../assets/images/$file");
  setSuccess("Jadwal Praktek Berhasil Dihapus!");
  query_delete('praktek', "id_praktek = '$id'");
  direct("jadwal.php");
} else if ($data == "pendaftar") {
  setSuccess("Data Pendaftar Berhasil Dihapus!");
  query_delete('pendaftar', "id_daftar = '$id'");
  direct("pendaftar.php");
} else if($data == "pengaduan") {
  setSuccess("Data Berhasil Dihapus!");
  query_delete('pengaduan', "id = '$id'");
  direct("pengaduan.php");
}
