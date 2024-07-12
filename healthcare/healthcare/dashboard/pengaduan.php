<?php
require "../function/init.php";
if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

$data = query_select('pengaduan', ['orderby' => "id DESC"]);



?>

<?php require "../partials/header.php" ?>



<?php require "../partials/navbar.php" ?>




<div class="container-fluid page-body-wrapper">

  <?php require "../partials/sidebar.php" ?>

  <style>
  td .img {
    width: 50px;
    height: 50px;
    background-size: cover;
    background-position: center;
  }
</style>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Daftar Pengaduan </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Pengaduan</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Index</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Daftar Pengaduan</h4>

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
                    <th>Judul</th>
                    <th>Lokasi</th>
                    <th>Type</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>

                  <?php
                  $no = 1;
                  foreach ($data as $item) : ?>
                    <tr>
                      <td><?= $no++ ?></td>
                      <td>
                        <?= $item['judul'] ?></td>
                      <td><?= $item['lokasi'] != "" ? $item['lokasi'] : "-" ?></td>
                      <td><?= $item['type']  ?></td>
                      <td>
                        <a href="pengaduan-detail.php?id=<?= $item['id'] ?>">
                          <label class="badge badge-secondary">Detail</label>
                        </a>
                        <a href="hapus.php?id=<?= $item['id'] ?>&data=pengaduan" onclick="return confirm('Apakah Anda Yakin?')">
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