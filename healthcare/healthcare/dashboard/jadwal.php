<?php
require "../function/init.php";
if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

$data = query_select('praktek', ['orderby' => "id_praktek DESC"]);



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
        <h3 class="page-title"> Jadwal Praktek </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Jadwal Praktek</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Index</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Jadwal Praktek</h4>
              <a href="jadwal-create.php" class="btn btn-sm btn-success mb-3">Tambah Jadwal</a>

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
                    <th>Nama Dokter</th>
                    <th>Hari</th>
                    <th>Jam</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>

                  <?php
                  $no = 1;
                  foreach ($data as $item) : ?>
                    <tr>
                      <td><?= $no++ ?></td>
                      <td class="d-flex align-items-center" style="gap: 10px">
                        <div class="img" style="background-image: url('../assets/images/<?= $item['img'] ?>');"></div>
                        <?= $item['nama_dokter'] ?></td>
                      <td><?= $item['hari'] ?></td>
                      <td><?= $item['dari_jam'] ?> - <?= $item['sampai_jam'] ?></td>
                      <td>
                        <a href="jadwal-edit.php?id=<?= $item['id_praktek'] ?>">
                          <label class="badge badge-secondary">Edit</label>
                        </a>
                        <a href="hapus.php?id=<?= $item['id_praktek'] ?>&data=praktek" onclick="return confirm('Apakah Anda Yakin?')">
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