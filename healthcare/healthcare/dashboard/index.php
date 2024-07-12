<?php
require "../function/init.php";
if (!login()) {
  setError("Silahkan Login Terlebih Dahulu");
  direct("../login.php");
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
          <h3 class="page-title"> Dashboard </h3>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
              <li class="breadcrumb-item active" aria-current="page"></li>
            </ol>
          </nav>
        </div>
        <div class="row">
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Selamat Datang Kembali</h4>

              </div>
            </div>
          </div>
        </div>

      </div>

    </div>
  </div>


  <?php require "../partials/footer.php" ?>

