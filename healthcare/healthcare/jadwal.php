<?php
require "function/init.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {

  $data = validate([
    'nama_pasien',
    'tempat_lahir',
    'tgl_lahir',
    'no_hp',
    'alamat_pasien',
    'location',
  ]);

  if ($data) {
    query_insert('ambulan', $data);
    setSuccess("Terima Kasih! Data Berhasil Ditambah!");
    direct("ambulan.php");
    die;
  } else {
    setError("Lengkapi Form!");
  }
}

$data = query_select('praktek', ['orderby' => "id_praktek ASC"]);
?>

<?php require "header.php" ?>

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css" integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="" />
<script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js" integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM=" crossorigin=""></script>

<?php require "navbar.php" ?>


<div class="container-fluid page-body-wrapper">

  <?php require "sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <style>
      td {
        padding-right: 10px;
      }

      table td {
        font-size: .9rem;
        color:  #444;
      }

      .img {
        width: 100%;
        height:  150px;
        margin-bottom: 1rem;
        background-size: cover;
        background-position: center;
      }

      .card.dokter {
        margin-bottom:  1rem;
      }

      .card.dokter .card-body {
        padding: 10px;
      }

      .card.dokter .card-body p {
        font-size: 1rem;
        color: #444;
      }
    </style>

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Jadwal Praktek </h3>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">

            <div class="card-body">
              <h4 class="card-title">Data Jadwal Praktek Dokter</h4>

              <a href="jadwal-daftar.php" class="btn btn-primary mb-3">Daftar</a>

              <?php if (hasSuccess() || hasError()) : ?>
                <div class="alert alert-<?= hasSuccess() ? "success" : "danger" ?>">
                  <?= hasSuccess() ? success() : error() ?>
                </div>
                <script>
                  setTimeout(() => {
                    document.querySelector('.alert').remove();
                  }, 3000);
                </script>
              <?php endif ?>

              <div class="row">

                <?php foreach ($data as $key => $value) : ?>

                  <div class="col-md-4">
                  <div class="card dokter shadow-sm">
                    <div class="card-body">

                      <div class="img" style='background-image: url("assets/images/<?= $value['img'] ?>");'></div>

                      <p class="title"><?= $value['nama_dokter'] ?></p>
                      <table border="0">
                        <tr>
                          <td>Hari</td>
                          <td>: <?= $value['hari'] ?></td>
                        </tr>
                        <tr>
                          <td>Jam </td>
                          <td>: <?= $value['dari_jam'] ?> - <?= $value['sampai_jam'] ?></td>
                        </tr>
                      </table>
                    </div>
                  </div>
                </div>

                <?php endforeach; ?>
                
              </div>

              

              
            </div>

          </div>
        </div>
      </div>

    </div>

  </div>
</div>

<script>
  function setLocation(data) {
    console.log(data);
    document.querySelector('input[name=location]').value = `${data.lat}_${data.lng}`;
  }

  var map = L.map('map').setView([-3.457242, 114.810318], 13);
  L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
  }).addTo(map);
  var popup = L.popup();

  function onMapClick(e) {
    popup
      .setLatLng(e.latlng)
      .setContent("Lokasi Dipilih")
      .openOn(map);
    setLocation(e.latlng);
  }

  map.on('click', onMapClick);
</script>

<?php require "partials/footer.php" ?>