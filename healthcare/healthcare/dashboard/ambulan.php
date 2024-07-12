<?php
require "../function/init.php";
if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

$data = query_select('ambulan', ['orderby' => "id_ambulan DESC"]);

?>

<?php require "../partials/header.php" ?>

<?php require "../partials/navbar.php" ?>


<div class="container-fluid page-body-wrapper">

  <?php require "../partials/sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Ambulan </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Ambulan</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Index</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Ambulan</h4>
              <!-- <a href="homecare-create.php" class="btn btn-sm btn-success mb-3">Tambah Data</a> -->

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

              <table class="table table-hover" id="table">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Nama Pasien</th>
                    <th>TTL</th>
                    <th>No Hp</th>
                    <th>Alamat Pasien</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>

                  <?php
                  $no = 1;
                  foreach ($data as $item) : ?>
                    <tr>
                      <td><?= $no++ ?></td>
                      <td><?= $item['nama_pasien'] ?></td>
                      <td><?= $item['tempat_lahir'] ?>, <?= dateToString($item['tgl_lahir']) ?></td>
                      <td><?= $item['no_hp'] ?></td>
                      <td><?= $item['alamat_pasien'] ?></td>
                      <td>
                        <a href="ambulan-detail.php?id=<?= $item['id_ambulan'] ?>">
                          <label class="badge badge-secondary">Lihat Lokasi</label>
                        </a>
                        <a href="hapus.php?id=<?= $item['id_ambulan'] ?>&data=ambulan" onclick="return confirm('Apakah Anda Yakin?')">
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

<script>
  $(document).ready(function() {
    var table = $('#table').DataTable();
  });
</script>


<?php require "../partials/footer.php" ?>