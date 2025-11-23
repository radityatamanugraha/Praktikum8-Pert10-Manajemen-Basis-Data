# Tugas Praktikum 8 (Pertemuan ke 10) <img src=https://qph.fs.quoracdn.net/main-qimg-648763cc041459725b62108f4fdf5b91 width="110px">

|Nama|NIM|Kelas|Mata Kuliah|
|----|---|-----|------|
|**Radityatama Nugraha**|**312310644**|**TI.23.A3**|**Manajemen Basis Data**|

# Soal 1:
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss1_pertemuan10.png)

## - Bentuk 1NF (First Normal Form)
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss2_pertemuan10.png)

## - Bentuk 2NF (Second Normal Form)
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss3_pertemuan10.png)

## - Untuk Memulai Codingan Database di XAMPP dan ke Shell
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss4_pertemuan10.png)

## - Membuat dan memilih database klinik dengan perintah CREATE DATABASE klinik; dan USE klinik;.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss5_pertemuan10.png)

## - Membuat tabel Pasien di dalam database klinik menggunakan perintah CREATE TABLE, yang berfungsi untuk menyimpan data pasien seperti nomor rekam medis (NoRM), nama, alamat, wilayah, nomor pasien, dan tanggal daftar; dengan NoRM sebagai primary key untuk memastikan setiap pasien memiliki identitas.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss6_pertemuan10.png)

## - Membuat tabel Dokter di dalam database klinik menggunakan perintah CREATE TABLE, yang berfungsi untuk menyimpan data dokter seperti kode dokter sebagai primary key dan nama dokter sebagai identitas tambahan.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss7_pertemuan10.png)

## - Membuat tabel Sakit di dalam database klinik menggunakan perintah CREATE TABLE, yang bertujuan untuk menyimpan data jenis penyakit dengan kolom KodeSakit sebagai primary key dan DeskripsiSakit sebagai penjelasan nama atau gejala penyakit.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss8_pertemuan10.png)

## - Membuat tabel Obat di dalam database klinik menggunakan perintah CREATE TABLE, yang bertujuan untuk menyimpan data obat dengan kolom KodeObat sebagai primary key dan NamaObat sebagai nama atau jenis obat yang tersedia di klinik.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss9_pertemuan10.png)

## - Membuat tabel Pemeriksaan di dalam database klinik menggunakan perintah CREATE TABLE, yang berfungsi untuk mencatat data pemeriksaan pasien, termasuk tanggal periksa, dokter yang menangani, penyakit yang didiagnosis, dan obat yang diberikan; dengan beberapa kolom seperti NoRM, KodeDokter, KodeSakit, dan KodeObat yang terhubung ke tabel lain melalui foreign key untuk menjaga integritas data antar tabel.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss10_pertemuan10.png)

## - Menampilkan seluruh tabel yang ada di dalam database klinik menggunakan perintah SHOW TABLES;, yang hasilnya menunjukkan lima tabel: dokter, obat, pasien, pemeriksaan, dan sakit—menandakan struktur data klinik sudah lengkap untuk mencatat informasi medis secara terintegrasi.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss11_pertemuan10.png)

## - Melakukan input data pasien ke dalam tabel Pasien di database klinik menggunakan perintah INSERT INTO, lalu menampilkan seluruh isi tabel dengan SELECT * FROM Pasien; untuk memastikan data seperti NoPasien, nama, alamat, dan tanggal daftar berhasil tersimpan dan ditampilkan.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss12_pertemuan10.png)

## - Melakukan input data dokter ke dalam tabel Dokter di database klinik menggunakan perintah INSERT INTO, lalu menampilkan seluruh isi tabel dengan SELECT * FROM Dokter; untuk memastikan data seperti KodeDokter dan NamaDokter berhasil tersimpan dan ditampilkan.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss13_pertemuan10.png)

## - Melakukan input data penyakit ke dalam tabel Sakit di database klinik menggunakan perintah INSERT INTO, lalu menampilkan seluruh isi tabel dengan SELECT * FROM Sakit; untuk memastikan data seperti KodeSakit dan DeskripsiSakit berhasil tersimpan dan ditampilkan.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss14_pertemuan10.png)

## - Melakukan input data obat ke dalam tabel Obat di database klinik menggunakan perintah INSERT INTO, lalu menampilkan seluruh isi tabel dengan SELECT * FROM Obat; untuk memastikan data seperti KodeObat dan NamaObat berhasil tersimpan dan ditampilkan.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss15_pertemuan10.png)

## - Melakukan input data pemeriksaan pasien ke dalam tabel Pemeriksaan di database klinik menggunakan perintah INSERT INTO, lalu menampilkan seluruh isi tabel dengan SELECT * FROM Pemeriksaan; untuk memastikan data seperti NoRM, TglPeriksa, KodeDokter, KodeSakit, KodeObat, dan Dosis berhasil tersimpan dan ditampilkan sesuai relasi antar tabel.
![gambar](Ss_Manajemen_Basis_Data_Pertemuan10/ss16_pertemuan10.png)

