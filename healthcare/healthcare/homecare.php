<?php
require "function/init.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {

  $data = validate([
    'nama',
    'tempat_lahir',
    'tanggal_lahir',
    'no_hp',
    'alamat',
  ]);

  if ($data) {
    query_insert('homecare', $data);
    setSuccess("Data Berhasil Ditambah!");
    direct("homecare.php");
    die;
  } else {
    setError("Lengkapi Form!");
  }
}

?>

<?php require "header.php" ?>

<?php require "navbar.php" ?>


<div class="container-fluid page-body-wrapper">

  <?php require "sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Home Care </h3>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">

            <div class="card-body">
              <h4 class="card-title">Masukkan Data Home Care</h4>

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
                  <label for="exampleInputUsername1">Nama</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Nama" name="nama">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tempat Lahir</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Tempat Lahir" name="tempat_lahir">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tanggal Lahir</label>
                  <input type="date" class="form-control" id="exampleInputEmail1" placeholder="Tanggal Lahir" name="tanggal_lahir">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">No Hp</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" placeholder="No Hp" name="no_hp">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Alamat</label>
                  <textarea name="alamat" id="" cols="30" rows="10" class="form-control" placeholder="Alamat"></textarea>
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

<?php require "partials/footer.php" ?>