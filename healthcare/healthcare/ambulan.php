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

?>

<?php require "header.php" ?>

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css" integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="" />
<script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js" integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM=" crossorigin=""></script>

<?php require "navbar.php" ?>


<div class="container-fluid page-body-wrapper">

  <?php require "sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Ambulan </h3>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">

            <div class="card-body">
              <h4 class="card-title">Masukkan Data</h4>

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

              <form class="forms-sample" method="POST">
                <div class="form-group">
                  <label for="exampleInputUsername1">Nama Pasien</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Nama" name="nama_pasien">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tempat Lahir</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Tempat Lahir" name="tempat_lahir">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tanggal Lahir</label>
                  <input type="date" class="form-control" id="exampleInputEmail1" placeholder="Tanggal Lahir" name="tgl_lahir">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">No Hp</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" placeholder="No Hp" name="no_hp">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Alamat</label>
                  <textarea name="alamat_pasien" id="" cols="30" rows="10" class="form-control" placeholder="Alamat"></textarea>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Lokasi</label>
                  <input type="hidden" name="location">
                  <div id="map" style="height: 250px;"></div>
                </div>

                <button type="submit" class="btn btn-success mr-2">Submit</button>
              </form>
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