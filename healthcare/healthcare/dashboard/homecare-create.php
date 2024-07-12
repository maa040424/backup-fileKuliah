<?php
require "../function/init.php";

if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

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
<?php require "../partials/header.php" ?>

<?php require "../partials/navbar.php" ?>

<div class="container-fluid page-body-wrapper">

  <?php require "../partials/sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Home Care </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home Care</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Tambah</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Tambah Data Home Care</h4>

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

                <button type="submit" class="btn btn-success mr-2">Tambah</button>
                <a href="homecare.php" class="btn btn-light">Kembali</a>
              </form>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>
</div>


<?php require "../partials/footer.php" ?>