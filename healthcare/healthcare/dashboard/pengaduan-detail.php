<?php
require "../function/init.php";
if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

$id = get('id');
$data = query_select('pengaduan', [
  'where' => "id = '$id'",
  'orderby' => "id DESC"
])[0];

?>

<?php require "../partials/header.php" ?>



<?php require "../partials/navbar.php" ?>




<div class="container-fluid page-body-wrapper">

  <?php require "../partials/sidebar.php" ?>

  
  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title">Detail <?= $data['type'] ?></h3>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">

            <div class="card-body">
              <form action="" method="POST" enctype="multipart/form-data">
               <div class="form-group">
                <label for="exampleInputUsername1">Judul Laporan</label>
                <input type="text" class="form-control" value="<?= $data['judul'] ?>" name="judul" readonly>
              </div>

              <input type="hidden" value="Pengaduan" name="type">

              <div class="form-group">
                <label for="exampleInputUsername1">Isi Laporan</label>

                <textarea  cols="30" rows="10" class="form-control" readonly><?= $data['isi'] ?></textarea>
              </div>

              <?php if ($data['type'] != "Pengaduan"): ?>

               <div class="form-group">
                <label for="exampleInputUsername1">Asal Pelapor</label>
                <input type="text" class="form-control" value="<?= $data['asal_pelapor'] ?>" readonly>
              </div>

            <?php endif ?>

            <?php if ($data['type'] == "Pengaduan"): ?>
             <div class="form-group">
              <label for="exampleInputUsername1">Tanggal Kejadian</label>
              <?php $tanggal = explode(" ", $data['tanggal_kejadian']) ?>
              <input type="text" class="form-control" value="<?= dateToString( $tanggal[0] ) ?>" readonly>
            </div>


            <div class="form-group">
              <label for="exampleInputUsername1">Lokasi Kejadian</label>
              <input type="text" class="form-control" value="<?= $data['lokasi'] ?>" readonly>
            </div>

          <?php endif ?>


          <div class="form-group">
            <label for="exampleInputUsername1">Instansi Tujuan</label>
            <input type="text" class="form-control" value="<?= $data['instansi'] ?>" readonly>
          </div>

          <div class="form-group">
            <label for="exampleInputUsername1">Kategori Pengaduan</label>
            <input type="text" class="form-control" value="<?= $data['kategori'] ?>" readonly>
          </div>

          <div class="form-group">
            <label for="exampleInputUsername1">File Lampiran</label>
            <?php if ($data['lampiran']): ?>
              <p>
                <a href="../lampiran/<?= $data['lampiran'] ?>">- Download Lampiran</a>
              </p>
            <?php else: ?>
              <p class="text-warning">Tidak Ada File Dilampirkan</p>
            <?php endif ?>
          </div>

          <a href="pengaduan.php" class="btn btn-primary">Kembali</a>
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