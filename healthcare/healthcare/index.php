<?php
require "function/init.php";

$data = query_select('homecare', ['orderby' => "id_hc DESC"]);

?>

<?php require "header.php" ?>

<?php require "navbar.php" ?>


<div class="container-fluid page-body-wrapper">

  <?php require "sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body text-center">
              <h2>WELCOME TO HEALTHCARE<br>RSU SYIFA MEDIKA BANJARBARU</h2>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>
</div>

<?php require "footer.php" ?>