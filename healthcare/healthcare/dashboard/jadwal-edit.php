<?php
require "../function/init.php";

if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

if ($_SERVER['REQUEST_METHOD'] == "POST") {

  $data = validate([
    'nama_dokter',
    'hari',
    'dari_jam',
    'sampai_jam',
  ]);

  if ($data && File::has('gambar')) {
    $filename = File::randomName() . File::getExt('gambar');

    $data['img'] = $filename;
    File::save($_FILES, "../assets/images/$filename");

    query_insert('praktek', $data);
    setSuccess("Data Berhasil Ditambah!");
    direct("jadwal.php");
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
        <h3 class="page-title"> Jadwal Praktek </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Jadwal Praktek</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Tambah</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Tambah Data Jadwal Praktek</h4>

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

              <form class="forms-sample" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                  <label for="exampleInputUsername1">Nama Dokter</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Nama" name="nama_dokter">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Hari</label>
                  <select name="hari" id="" class="form-control">
                    <option value="">Pilih Hari</option>
                    <option value="Senin">Senin</option>
                    <option value="Selasa">Selasa</option>
                    <option value="Rabu">Rabu</option>
                    <option value="Kamis">Kamis</option>
                    <option value="Jumat">Jumat</option>
                    <option value="Sabtu">Sabtu</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Dari Jam (Contoh: 07:30)</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="dari_jam">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Sampai Jam (Contoh: 17:00)</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" name="sampai_jam">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Gambar</label>
                  <input type="file" name="gambar" class="form-control">

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