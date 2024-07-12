<?php
  require "function/init.php";

  if (submit('username') && submit('password')) {

    $data = validate(['username', 'password']);

    if ($data) {
      
      $data['password'] = md5($data['password']);
      $user = query_select('users', ['where' => "username = '$data[username]' AND password = '$data[password]'"]);

      if ($user) {
        $_SESSION['login'] = $user[0];
        setSuccess("Login Berhasil");
      } else {
        setError("Username dan Password Salah");
      }
      
    } else {
      setError("Username dan Password Tidak Boleh Kosong");
    }

    direct("login.php");

  }

 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Healthcare</title>
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
   
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/custom.css">
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <img src="assets/hc.png" >
                </div>
                <h4>Hello! let's get started</h4>
                <h6 class="font-weight-light">Sign in to continue.</h6>

                <?php if (hasSuccess() || hasError()): ?>

                  <?php if (hasSuccess()) : ?>
                      <script>
                        setTimeout(() => {
                         location.href = 'dashboard';
                        }, 2500);
                      </script>
                  <?php endif ?>

                <div class="alert alert-<?= hasSuccess() ? "success" : "danger" ?>">
                  <small>
                    <?= hasSuccess() ? success() : error() ?>
                  </small>
                </div>

                <script>
                  setTimeout(() => {
                    document.querySelector('.alert').remove();
                  }, 3500);
                </script>
                <?php endif ?>

                <form class="pt-3" method="POST">
                  <div class="form-group">
                    <input type="text" name="username" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="mt-3">
                    <button type="submit" class="btn btn-block btn-success btn-lg font-weight-medium auth-form-btn">SIGN IN</button>
                  </div>
                  
                  <div class="text-center mt-4 font-weight-light"> Don't have an account? <a href="register.html" class="text-success">Create</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

    <script src="assets/vendors/js/vendor.bundle.base.js"></script>

    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>

  </body>
</html>