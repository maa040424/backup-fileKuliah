<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perhitungan Nilai</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .center {
            text-align: center;
        }
        .container {
            width: 50%;
            margin: 20px auto;
            border: 1px solid #000;
            padding: 20px;
        }
        table {
            width: 100%;
        }
        th, td {
            padding: 8px;
        }
        th {
            text-align: left;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 5px;
            box-sizing: border-box;
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 15px;
            margin: 10px 5px 0 0;
        }
        .back-link {
            text-decoration: none;
            color: blue;
            display: block;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="#" class="back-link"><< Kembali</a>
        <h1 class="center">Perhitungan Nilai</h1>
        
        <form action="process_nilai.php" method="post">
            <table>
                <tr>
                    <th>NIM</th>
                    <td><input type="text" name="nim" placeholder="masukan nim..." required></td>
                </tr>
                <tr>
                    <th>Nama Lengkap</th>
                    <td><input type="text" name="nama" placeholder="masukan nama..." required></td>
                </tr>
                <tr>
                    <th>Nilai Absen</th>
                    <td><input type="number" name="nilai_absen" value="0" min="0" max="100" required></td>
                </tr>
                <tr>
                    <th>Nilai Tugas</th>
                    <td><input type="number" name="nilai_tugas" value="0" min="0" max="100" required></td>
                </tr>
                <tr>
                    <th>Nilai UTS</th>
                    <td><input type="number" name="nilai_uts" value="0" min="0" max="100" required></td>
                </tr>
                <tr>
                    <th>Nilai UAS</th>
                    <td><input type="number" name="nilai_uas" value="0" min="0" max="100" required></td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <input type="submit" value="Hitung">
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
