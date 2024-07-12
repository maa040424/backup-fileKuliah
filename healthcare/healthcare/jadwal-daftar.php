<?php
require "function/init.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {

  $data = validate([
    'nama',
    'no_hp',
    'alamat',
    'hari',
    'tempat_lahir',
    'tanggal_lahir',
    'jaminan',
    'kartu_jaminan',
    'poli',
    'dokter',
    'tanggal',
  ]);

  if ($data) {
    query_insert('pendaftar', $data);
    setSuccess("Pendaftaran Berhasil!");
    direct("jadwal.php");
    die;
  } else {
    setError("Lengkapi Form!");
  }
}

$conn = connect_DB();
$daftarHari = $conn->query("SELECT DISTINCT hari FROM praktek;");

?>
<?php require "header.php" ?>

<?php require "navbar.php" ?>

<div class="container-fluid page-body-wrapper">

  <?php require "sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Jadwal Praktek </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Jadwal Praktek</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Form Pandaftaran</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Form Pendaftaran</h4>

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
                  <label for="exampleInputUsername1">Nama Lengkap</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Nama" name="nama">
                </div>

                 <div class="form-group">
                  <label for="exampleInputUsername1">No Telp. / WA</label>
                  <input type="number" class="form-control" id="exampleInputUsername1" placeholder="No Telp / WA" name="no_hp">
                </div>

                <div class="form-group">
                  <label for="exampleInputUsername1">Tempat Lahir</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Tempat Lahir" name="tempat_lahir">
                </div>

                 <div class="form-group">
                  <label for="exampleInputUsername1">Tanggal Lahir</label>
                  <input type="date" class="form-control" id="exampleInputUsername1" placeholder="Tanggal Lahir" name="tanggal_lahir">
                </div>

                <div class="form-group">
                  <label for="exampleInputUsername1">Tanggal Lahir</label>
                  <textarea name="alamat" placeholder="Alamat" class="form-control" rows="10"></textarea>
                </div>

                <div class="form-group">
                  <label for="exampleInputUsername1">Jaminan</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Jaminan" name="jaminan">
                </div>

                 <div class="form-group">
                  <label for="exampleInputUsername1">Kartu Jaminan BPJS / Asuransi</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="BPJS / Asuransi" name="kartu_jaminan">
                </div>

                <div class="form-group">
                  <label for="exampleInputUsername1">Poli</label>
                  <input type="text" class="form-control" id="exampleInputUsername1" placeholder="" name="poli">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Hari</label>
                  <select name="hari" id="" class="form-control" onchange="handleSelectHari(this)">
                    <option value="">Pilih Hari</option>
                    <?php foreach($daftarHari as $item) : ?>
                      <option value="<?= $item['hari'] ?>"><?= $item['hari'] ?></option>
                    <?php endforeach; ?>
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Dokter</label>
                  <select name="dokter" id="" class="form-control">
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Tanggal Kunjungan</label>
                  <input type="date" class="form-control" id="exampleInputPassword1" name="tanggal">
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

<script>
  const handleSelectHari = (e) => {

    fetch('api/jadwal.php?hari=' + e.value)
    .then(res => res.text())
    .then(html => {
      document.querySelector('select[name=dokter]').innerHTML = html;
    });


  }
</script>


<?php require "partials/footer.php" ?>