<?php
require "../function/init.php";
if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

$now = date("Y-m-d");

$data = query_select('pendaftar', [
  'where' => "tanggal = '$now' OR tanggal > '$now'",
  'orderby' => "tanggal ASC",
]);

?>

<?php require "../partials/header.php" ?>

<?php require "../partials/navbar.php" ?>




<div class="container-fluid page-body-wrapper">

  <?php require "../partials/sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">
    
    <style>
  .data td {
    border: none !important;
  }
</style>

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> List Data Pendaftar </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Pandaftar</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Index</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">List Data Pendaftar</h4>

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

              <div class="table-responsive">
                <table class="table table-hover" id="table">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Tanggal Kunjungan</th>
                    <th>Pasien</th>
                    <th>Hari</th>
                    <th>Dokter</th>
                    <th>Poli</th>
                    <th>Jaminan</th>
                    <th>Kartu Jaminan BPJS / Asuransi</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>

                  <?php
                  $no = 1;
                  foreach ($data as $item) : ?>
                    <tr>
                      <td><?= $no++ ?></td>
                      <td><?= dateToString($item['tanggal']) ?></td>
                      <td>
                        <table border="0" class="data">
                          <tr>
                            <td>Nama</td>
                            <td><?= $item['nama'] ?></td></td>
                          </tr>
                          <tr>
                            <td>TTL</td>
                            <td><?= $item['tempat_lahir'] ?>, <?= dateToString($item['tanggal_lahir']) ?></td></td>
                          </tr>
                          <tr>
                            <td>No Telp/Wa</td>
                            <td><?= $item['no_hp'] ?></td>
                          </tr>
                           <tr>
                            <td>Alamat</td>
                            <td><?= $item['alamat'] ?></td>
                          </tr>
                          
                        </table>
                        
                      <td><?= $item['hari'] ?></td>
                      <td><?= $item['dokter'] ?></td>
                      <td><?= $item['poli'] ?></td>
                      <td><?= $item['jaminan'] ?></td>
                      <td><?= $item['kartu_jaminan'] ?></td>
                      <td>
                        <a href="hapus.php?id=<?= $item['id_daftar'] ?>&data=pendaftar" onclick="return confirm('Apakah Anda Yakin?')">
                          <label class="badge badge-danger">Hapus</label>
                        </a>
                      </td>
                    </tr>
                  <?php endforeach ?>

                </tbody>
              </table>
              </div>


            </div>
          </div>
        </div>
      </div>

    </div>

  </div>
</div>

<script>
  $(document).ready(function() {
    var table = $('#table').DataTable();
  });
</script>


<?php require "../partials/footer.php" ?>