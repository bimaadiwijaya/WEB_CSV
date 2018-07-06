<?php
/*
<!--
-- KELOMPOK 1
-- TITO ABDUL
-- ANDI FILA
-- BIMA ADI
-->
*/

// Load file koneksi.php
include "koneksi.php";

if(isset($_POST['import'])){ // Jika user mengklik tombol Import
	// Load librari PHPExcel nya
	require_once 'PHPExcel/PHPExcel.php';
	
	$inputFileType = 'CSV';
	$inputFileName = 'tmp/data.csv';
	
	$reader = PHPExcel_IOFactory::createReader($inputFileType);
	$excel = $reader->load($inputFileName);
	
	// Buat query Insert
	$query = "INSERT INTO data VALUES";
	
	$numrow = 1;
	$worksheet = $excel->getActiveSheet();
	foreach ($worksheet->getRowIterator() as $row) {
		// Cek $numrow apakah lebih dari 1
		// Artinya karena baris pertama adalah nama-nama kolom
		// Jadi dilewat saja, tidak usah diimport
		if($numrow > 1){
			// START -->
			// Skrip untuk mengambil value nya
			$cellIterator = $row->getCellIterator();
			$cellIterator->setIterateOnlyExistingCells(false); // Loop all cells, even if it is not set
			
			$get = array(); // Valuenya akan di simpan kedalam array,dimulai dari index ke 0
			foreach ($cellIterator as $cell) {
				array_push($get, $cell->getValue()); // Menambahkan value ke variabel array $get
			}
			// <-- END
			
			// Ambil data value yang telah di ambil dan dimasukkan ke variabel $get
			$no_csv = $get[0]; // Ambil data NIS
			$nama = $get[1]; // Ambil data nama
			$jk_csv = $get[2]; // Ambil data jenis kelamin
			
			// Cek jika semua data tidak diisi
			if(empty($nis) && empty($nama) && empty($jk))
				continue; // Lewat data pada baris ini (masuk ke looping selanjutnya / baris selanjutnya)
			
			// Tambahkan value yang akan di insert ke variabel $query
			$query .= "('".$no_csv."','".$nama."','".$jk_csv."'),";
		}
		
		$numrow++; // Tambah 1 setiap kali looping
	}
	
	// Kita hilangkan tanda koma di akhir query
	// sehingga kalau di echo $query nya akan sepert ini : (contoh ada 2 data siswa)
	// INSERT INTO siswa VALUES('1011001','Rizaldi','Laki-laki','089288277372','Bandung'),('1011002','Siska','Perempuan','085266255121','Jakarta');
	$query = substr($query, 0, strlen($query) - 1).";";
	
	// Eksekusi $query
	mysqli_query($connect, $query);
}

header('location: index.php'); // Redirect ke halaman awal
?>
