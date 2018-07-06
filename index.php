<!--
-- KELOMPOK 1
-- TITO ABDUL
-- ANDI FILA
-- BIMA ADI
-->

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Import Data CSV</title>
		
		<!-- css -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Style untuk Loading -->
		<style>
        #loading{
			background: whitesmoke;
			position: absolute;
			top: 140px;
			left: 82px;
			padding: 5px 10px;
			border: 1px solid #ccc;
		}
		</style>
	</head>
	<body>
	<div class="container">
	<br>
		<nav class="navbar navbar-inverse" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" style="color: white;">
					<b>Import Data CSV dengan PHP</b></a>
				</div>
			</div>
		</nav>
		
		<!-- Content -->
		<div style="padding: 0 15px;">
			<a href="form.php" class="btn btn-success pull-right">
				<span class="glyphicon glyphicon-upload"></span> Import Data
			</a>
			<font color="White">
			<h3>Data Hasil Import</h3>
			
			<hr>
			
			<!-- Buat sebuah div dan beri class table-responsive agar tabel jadi responsive -->
			<div class="table-responsive">
				<table class="table table-bordered">
					<tr>
						<th>No</th>
						<th>Nama</th>
						<th>Jurusan</th>
					</tr>
					<?php
					// Load file koneksi.php
					include "koneksi.php";
					
					// Buat query untuk menampilkan semua data siswa
					$sql = mysqli_query($connect, "SELECT * FROM data");
	
					#$no = 1; // Untuk penomoran tabel, di awal set dengan 1
					while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
						echo "<tr>";
						#echo "<td>".$no."</td>";
						echo "<td>".$data['id']."</td>";
						echo "<td>".$data['Nama']."</td>";
						echo "<td>".$data['Jurusan']."</td>";
						echo "</tr>";
						
						#$no++; // Tambah 1 setiap kali looping
					}
					?>
				</table>
			</div>
		</div>
		</table>
	</body>
</html>
