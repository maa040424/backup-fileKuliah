<?php
require "function/init.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {

  $type = htmlspecialchars($_POST['type']);

  if ($type == "Pengaduan") {
    $data = validate([
      'judul',
      'isi',
      'tanggal_kejadian',
      'lokasi',
      'instansi',
      'kategori',
      'type',
    ]);
    $success = "Pengaduan Anda Berhasil Dikirim!";
  } else if($type == "Aspirasi") {
    $data = validate([
      'judul',
      'isi',
      'asal_pelapor',
      'instansi',
      'kategori',
      'type',
    ]);
    $success = "Aspirasi Anda Berhasil Dikirim!";
  } else if ($type == "Permintaan Informasi") {
     $data = validate([
      'judul',
      'isi',
      'asal_pelapor',
      'instansi',
      'kategori',
      'type',
    ]);
    $success = "Permintaan Infomasi Anda Berhasil Dikirim!";
  }


  if ($data) {

    if(File::has('lampiran')) {
      $filename = File::randomName() . File::getExt('lampiran');
      $data['lampiran'] = $filename;
      File::save($_FILES, "lampiran/$filename");
    }

    query_insert('pengaduan', $data);
    setSuccess($success);

  } else {
    setError('Lengkapi Form!');
  }

  direct('pengaduan.php');
}

?>

<?php require "header.php" ?>

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css" integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="" />
<script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js" integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM=" crossorigin=""></script>

<?php require "navbar.php" ?>


<div class="container-fluid page-body-wrapper">

  <?php require "sidebar.php" ?>

  <!-- partial -->
  <div class="main-panel">

    <div class="content-wrapper">
      <div class="page-header">
        <h3 class="page-title"> Laman Pengaduan</h3>
      </div>
      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">

            <div class="card-body">
              <h4 class="card-title">Sampaikan Laporan Anda</h4>

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

              <p>Pilih Klasifikasi Laporan</p>
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item " role="presentation">
                  <button class="nav-link active" id="home-tab" data-toggle="tab" data-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Pengaduan</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="profile-tab" data-toggle="tab" data-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Aspirasi</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Permintaan Informasi</button>
                </li>
              </ul>
              <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                  <h3 class="text-dark mb-3">Form Pengaduan</h3>

                  <form action="" method="POST" enctype="multipart/form-data">
                     <div class="form-group">
                        <label for="exampleInputUsername1">Judul Laporan</label>
                        <input type="text" class="form-control" placeholder="Judul Laporan Anda" name="judul">
                      </div>

                      <input type="hidden" value="Pengaduan" name="type">

                      <div class="form-group">
                        <label for="exampleInputUsername1">Isi Laporan</label>
                       
                        <textarea name="isi" placeholder="Isi Laporan Anda" id="" cols="30" rows="10" class="form-control"></textarea>
                      </div>

                       <div class="form-group">
                        <label for="exampleInputUsername1">Tanggal Kejadian</label>
                        <input type="date" class="form-control" name="tanggal_kejadian">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">Lokasi Kejadian</label>
                        <input type="text" class="form-control" placeholder="Lokasi Kejadian" name="lokasi">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">Instansi Tujuan</label>
                        <input type="text" class="form-control" placeholder="Instansi Tujuan" name="instansi">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">Kategori Pengaduan</label>
                        <select name="kategori" class="form-control" id="">
                          <option value="">Pilih Kategori</option>  
                          <option value="Agama">Agama</option>  
                          <option value="Virus Corona">Virus Corona</option>  
                          <option value="Ekonomi Dan Keuangan">Ekonomi Dan Keuangan</option>  
                          <option value="Kesehatan">Kesehatan</option>  
                          <option value="Kesetaraan Gender Dan Sosial Inklusif">Kesetaraan Gender Dan Sosial Inklusif</option>  
                          <option value="Ketentraman, Ketertiban Umum, dan Perlindungan Masyarakat">Ketentraman, Ketertiban Umum, dan Perlindungan Masyarakat</option>  
                          <option value="Lingkungan Hidup Dan Kehutanan">Lingkungan Hidup Dan Kehutanan</option>  
                          <option value="Pekerjaan Umum Dan Penataan Ruang">Pekerjaan Umum Dan Penataan Ruang</option>  
                          <option value="Pembangunan Desa, Daerah Tertinggal, Dan Transmigrasi">Pembangunan Desa, Daerah Tertinggal, Dan Transmigrasi</option>  
                          <option value="Pendidikan Dan Kebudayaan">Pendidikan Dan Kebudayaan</option>  
                          <option value="Pertanian Dan Peternakan">Pertanian Dan Peternakan</option>  
                          <option value="Politik Dan Hukum">Politik Dan Hukum</option>  
                          <option value="Politisasi ASN">Politisasi ASN</option>  
                          <option value="Sosial Dan Kesejahteraan">Sosial Dan Kesejahteraan</option>  
                          <option value="SP4N-LAPOR!">SP4N-LAPOR!</option>  
                          <option value="Energi Dan Sumber Daya Alam">Energi Dan Sumber Daya Alam</option>  
                          <option value="Kekerasan Di Satuan Pendidikan (Sekolah, Kampus, Lembaga Kursus)">Kekerasan Di Satuan Pendidikan (Sekolah, Kampus, Lembaga Kursus)</option>  
                          <option value="Kependudukan">Kependudukan</option>  
                          <option value="Ketenagakerjaan">Ketenagakerjaan</option>  
                          <option value="Netralitas ASN">Netralitas ASN</option>  
                          <option value="Pemulihan Ekonomi Nasional">Pemulihan Ekonomi Nasional</option>  
                          <option value="Pencegahan Dan Pembarantasan Penyalahgunaan dan Peredaraan Gelap Narkotika dan Prekusor Narkotika (P4GN)">Pencegahan Dan Pembarantasan Penyalahgunaan dan Peredaraan Gelap Narkotika dan Prekusor Narkotika (P4GN)</option>  
                          <option value="Peniadaan Mudik">Peniadaan Mudik</option>  
                          <option value="Perhubungan">Perhubungan</option>  
                          <option value="Perlindungan Konsumen">Perlindungan Konsumen</option>  
                          <option value="Teknologi Informasi Dan Komunikasi">Teknologi Informasi Dan Komunikasi</option>  
                          <option value="Topik Khusus">Topik Khusus</option>  
                        </select>


                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">File Lampiran</label>
                        <input type="file" class="form-control" name="lampiran">
                      </div>

                      <button class="btn btn-primary">Submit</button>
                  </form>

                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                  
                   <h3 class="text-dark mb-3">Form Aspirasi</h3>

                  <form action="" method="POST" enctype="multipart/form-data">
                     <div class="form-group">
                        <label for="exampleInputUsername1">Judul Laporan</label>
                        <input type="text" class="form-control" placeholder="Judul Laporan Anda" name="judul">
                      </div>

                      <input type="hidden" value="Aspirasi" name="type">


                      <div class="form-group">
                        <label for="exampleInputUsername1">Isi Laporan</label>
                       
                        <textarea name="isi" placeholder="Isi Laporan Anda" id="" cols="30" rows="10" class="form-control"></textarea>
                      </div>

                       <div class="form-group">
                        <label for="exampleInputUsername1">Asal Pelapor</label>
                        <input type="text" class="form-control" placeholder="Asal Pelapor" name="asal_pelapor">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">Instansi Tujuan</label>
                        <input type="text" class="form-control" placeholder="Instansi Tujuan" name="instansi">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">Kategori Pengaduan</label>
                        <select name="kategori" class="form-control" id="">
                          <option value="">Pilih Kategori</option>  
                          <option value="Agama">Agama</option>  
                          <option value="Virus Corona">Virus Corona</option>  
                          <option value="Ekonomi Dan Keuangan">Ekonomi Dan Keuangan</option>  
                          <option value="Kesehatan">Kesehatan</option>  
                          <option value="Kesetaraan Gender Dan Sosial Inklusif">Kesetaraan Gender Dan Sosial Inklusif</option>  
                          <option value="Ketentraman, Ketertiban Umum, dan Perlindungan Masyarakat">Ketentraman, Ketertiban Umum, dan Perlindungan Masyarakat</option>  
                          <option value="Lingkungan Hidup Dan Kehutanan">Lingkungan Hidup Dan Kehutanan</option>  
                          <option value="Pekerjaan Umum Dan Penataan Ruang">Pekerjaan Umum Dan Penataan Ruang</option>  
                          <option value="Pembangunan Desa, Daerah Tertinggal, Dan Transmigrasi">Pembangunan Desa, Daerah Tertinggal, Dan Transmigrasi</option>  
                          <option value="Pendidikan Dan Kebudayaan">Pendidikan Dan Kebudayaan</option>  
                          <option value="Pertanian Dan Peternakan">Pertanian Dan Peternakan</option>  
                          <option value="Politik Dan Hukum">Politik Dan Hukum</option>  
                          <option value="Politisasi ASN">Politisasi ASN</option>  
                          <option value="Sosial Dan Kesejahteraan">Sosial Dan Kesejahteraan</option>  
                          <option value="SP4N-LAPOR!">SP4N-LAPOR!</option>  
                          <option value="Energi Dan Sumber Daya Alam">Energi Dan Sumber Daya Alam</option>  
                          <option value="Kekerasan Di Satuan Pendidikan (Sekolah, Kampus, Lembaga Kursus)">Kekerasan Di Satuan Pendidikan (Sekolah, Kampus, Lembaga Kursus)</option>  
                          <option value="Kependudukan">Kependudukan</option>  
                          <option value="Ketenagakerjaan">Ketenagakerjaan</option>  
                          <option value="Netralitas ASN">Netralitas ASN</option>  
                          <option value="Pemulihan Ekonomi Nasional">Pemulihan Ekonomi Nasional</option>  
                          <option value="Pencegahan Dan Pembarantasan Penyalahgunaan dan Peredaraan Gelap Narkotika dan Prekusor Narkotika (P4GN)">Pencegahan Dan Pembarantasan Penyalahgunaan dan Peredaraan Gelap Narkotika dan Prekusor Narkotika (P4GN)</option>  
                          <option value="Peniadaan Mudik">Peniadaan Mudik</option>  
                          <option value="Perhubungan">Perhubungan</option>  
                          <option value="Perlindungan Konsumen">Perlindungan Konsumen</option>  
                          <option value="Teknologi Informasi Dan Komunikasi">Teknologi Informasi Dan Komunikasi</option>  
                          <option value="Topik Khusus">Topik Khusus</option> 
                        </select>
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">File Lampiran</label>
                        <input type="file" class="form-control" name="lampiran">
                      </div>

                      <button class="btn btn-primary">Submit</button>
                  </form>

                </div>


                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                  
                  <h3 class="text-dark mb-3">Form Permintaan Informasi</h3>

                  <form action="" method="POST" enctype="multipart/form-data">
                     <div class="form-group">
                        <label for="exampleInputUsername1">Judul Laporan</label>
                        <input type="text" class="form-control" placeholder="Judul Laporan Anda" name="judul">
                      </div>

                      <input type="hidden" value="Permintaan Informasi" name="type">

                      <div class="form-group">
                        <label for="exampleInputUsername1">Isi Laporan</label>
                       
                        <textarea name="isi" placeholder="Isi Laporan Anda" id="" cols="30" rows="10" class="form-control"></textarea>
                      </div>

                       <div class="form-group">
                        <label for="exampleInputUsername1">Asal Pelapor</label>
                        <input type="text" class="form-control" placeholder="Asal Pelapor" name="asal_pelapor">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">Instansi Tujuan</label>
                        <input type="text" class="form-control" placeholder="Instansi Tujuan" name="instansi">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">Kategori Pengaduan</label>
                        <select name="kategori" class="form-control" id="">
                          <option value="">Pilih Kategori</option>  
                          <option value="Agama">Agama</option>  
                          <option value="Virus Corona">Virus Corona</option>  
                          <option value="Ekonomi Dan Keuangan">Ekonomi Dan Keuangan</option>  
                          <option value="Kesehatan">Kesehatan</option>  
                          <option value="Kesetaraan Gender Dan Sosial Inklusif">Kesetaraan Gender Dan Sosial Inklusif</option>  
                          <option value="Ketentraman, Ketertiban Umum, dan Perlindungan Masyarakat">Ketentraman, Ketertiban Umum, dan Perlindungan Masyarakat</option>  
                          <option value="Lingkungan Hidup Dan Kehutanan">Lingkungan Hidup Dan Kehutanan</option>  
                          <option value="Pekerjaan Umum Dan Penataan Ruang">Pekerjaan Umum Dan Penataan Ruang</option>  
                          <option value="Pembangunan Desa, Daerah Tertinggal, Dan Transmigrasi">Pembangunan Desa, Daerah Tertinggal, Dan Transmigrasi</option>  
                          <option value="Pendidikan Dan Kebudayaan">Pendidikan Dan Kebudayaan</option>  
                          <option value="Pertanian Dan Peternakan">Pertanian Dan Peternakan</option>  
                          <option value="Politik Dan Hukum">Politik Dan Hukum</option>  
                          <option value="Politisasi ASN">Politisasi ASN</option>  
                          <option value="Sosial Dan Kesejahteraan">Sosial Dan Kesejahteraan</option>  
                          <option value="SP4N-LAPOR!">SP4N-LAPOR!</option>  
                          <option value="Energi Dan Sumber Daya Alam">Energi Dan Sumber Daya Alam</option>  
                          <option value="Kekerasan Di Satuan Pendidikan (Sekolah, Kampus, Lembaga Kursus)">Kekerasan Di Satuan Pendidikan (Sekolah, Kampus, Lembaga Kursus)</option>  
                          <option value="Kependudukan">Kependudukan</option>  
                          <option value="Ketenagakerjaan">Ketenagakerjaan</option>  
                          <option value="Netralitas ASN">Netralitas ASN</option>  
                          <option value="Pemulihan Ekonomi Nasional">Pemulihan Ekonomi Nasional</option>  
                          <option value="Pencegahan Dan Pembarantasan Penyalahgunaan dan Peredaraan Gelap Narkotika dan Prekusor Narkotika (P4GN)">Pencegahan Dan Pembarantasan Penyalahgunaan dan Peredaraan Gelap Narkotika dan Prekusor Narkotika (P4GN)</option>  
                          <option value="Peniadaan Mudik">Peniadaan Mudik</option>  
                          <option value="Perhubungan">Perhubungan</option>  
                          <option value="Perlindungan Konsumen">Perlindungan Konsumen</option>  
                          <option value="Teknologi Informasi Dan Komunikasi">Teknologi Informasi Dan Komunikasi</option>  
                          <option value="Topik Khusus">Topik Khusus</option> 
                        </select>
                      </div>

                      <div class="form-group">
                        <label for="exampleInputUsername1">File Lampiran</label>
                        <input type="file" class="form-control" name="lampiran">
                      </div>

                      <button class="btn btn-primary">Submit</button>
                  </form>

                </div>
              </div>


              
            </div>

          </div>
        </div>
      </div>

    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


<?php require "partials/footer.php" ?>