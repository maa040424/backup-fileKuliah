<?php
require "../function/init.php";
if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
}

$id_ambulan = get('id');

$data = query_select('ambulan', [
  'where' => "id_ambulan = '$id_ambulan'",
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
        <h3 class="page-title"> Ambulan </h3>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Ambulan</a></li>
            <li class="breadcrumb-item active" aria-current="page"> Detail</li>
          </ol>
        </nav>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Detail Ambulan</h4>

              <style>
                table td {
                  color: #333;
                  padding: 3px;
                  padding-right: 30px;
                }

                p {
                  color: #333;
                  font-size: 1.1rem;
                }
              </style>

              <table border="0">
                <tr>
                  <td>Nama Pasien</td>
                  <td>:</td>
                  <td><?= $data['nama_pasien'] ?></td>
                </tr>
                <tr>
                  <td>TTL</td>
                  <td>:</td>
                  <td><?= $data['tempat_lahir'] ?>, <?= dateToString($data['tgl_lahir']) ?></td>
                </tr>
                <tr>
                  <td>No Hp</td>
                  <td>:</td>
                  <td><?= $data['no_hp'] ?></td>
                </tr>
                <tr>
                  <td>Alamat Pasien</td>
                  <td>:</td>
                  <td><?= $data['alamat_pasien'] ?></td>
                </tr>
              </table>

              <br>

              <p>Lokasi</p>
              <?php
              $co = explode("_", $data['location']);
              ?>

              <iframe height="350" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?q=<?= $co[0] ?>,<?= $co[1] ?>&hl=id&z=14&amp;output=embed">
              </iframe>

              <a href="ambulan.php" class="btn btn-light">Kembali</a>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>
</div>


<?php require "../partials/footer.php" ?>