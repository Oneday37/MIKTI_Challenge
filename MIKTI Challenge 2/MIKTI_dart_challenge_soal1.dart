import 'dart:io'; //Melakukan import terhadap package dart.io

void main() {
  //Membuat 3 buah variabel global bernilai 0 dan dengan menggunakan tipe data integer
  int totallumba = 0;
  int totalkoala = 0;
  int terimafix = 0;

  print("\tPenentuan Pemenang Lomba Senam Berdasarkan Hasil Nilai Rata Rata yang Didapatkan dari 3 Match"); //Menampilkan informasi kepada user terkait tujuan dari program
  print("Masukkan Penilaian Tim Lumba Lumba: "); 
  for (int i = 1; i < 4; i++) { //Menggunakan for loops untuk mengeksekusi baris program didalamnya secara berulang ulang sesuai dengan batasan yang telah ditentukan
    stdout.write("Match ke-$i: "); //Meminta inputan ke user
    var terima = stdin.readLineSync(); //Menerima inputan berupa string dari user dan disimpan kedalam variabel terima
    terimafix = int.parse(terima ?? ""); //Merubah tipe data dari nilai inputan user, yang awalnya String menjadi integer
    totallumba += terimafix; //Dilakukan proses penambahan terhadap setiap inputan yang masuk
  }
  num pointlumba = (totallumba / 3); //Mencari nilai rata rata dari inputan yang telah dimasukkan dan disimpan kedalam variabel pointlumba dengan tipe data num

  print("\nMasukkan Penilaian Tim Koala: ");
  for (int i = 1; i < 4; i++) {
    stdout.write("Match ke-$i: ");
    var terima = stdin.readLineSync();
    terimafix = int.parse(terima ?? "");
    totalkoala += terimafix;
  }
  num pointkoala = (totalkoala / 3);

  print("\nNilai Rata Rata dari kedua tim: "); //Menampilkan pesan ke layar
  //Menampilkan pesan ke layar dan mengembalikan nilai rata rata dari variabel pointlumba dan hanya mengembalikan nilai sebanyak 2 angka dibelakang koma
  print("Tim Lumba Lumba\t: " + pointlumba.toStringAsFixed(2)); 
  //Menampilkan pesan ke layar dan mengembalikan nilai rata rata dari variabel pointkoala dan hanya mengembalikan nilai sebanyak 2 angka dibelakang koma
  print("Tim Koala\t: " + pointkoala.toStringAsFixed(2));
  print("\nHasil Akhir:"); //Menampilkan pesan ke layar

  /*
  Menggunakan statement nested if untuk proses penyeleksian terhadap beberapa kondisi
  Statement if-else pertama (diluar) akan dieksekusi ketika nilai rata rata dari pointlumba dan pointkoala berada diatas 100. Jika kedua pernyataan tersebut
  benar, maka program akan berlanjut kedalam statement if-else berikutnya (statement of-else dalam). Pada statement if-else dalam, sistem akan melakukan perbandingan
  terhadap 2 nilai rata rata tersebut. 
  *Jika pointlumba < pointkoala, maka program akan menampilkan pesan bahwa tim koala yang memenangkan perlombaan dan juga akan menampilkan nilai rata rata 
  dari tim koala
  *Jika pointlumba > pointkoala, maka program akan menampilkan pesan bahwa tim lumba yang memenangkan perlombaan dan juga akan menampilkan nilai rata rata 
  dari tim lumba
  *Jika kedua nilai rata rata dari kedua tim sama, maka sistem akan menampilkan pesan bahwa tidak ada tim yang memenangkan perlombaan
  */
  if (pointlumba >= 100 && pointkoala >= 100) {
    if (pointlumba < pointkoala) {
      print("TIm Koala memenangkan lomba senam kali ini dengan perolehan point sebesar " + pointkoala.toStringAsFixed(2));
    } else if (pointlumba > pointkoala) {
      print("Tim Lumba Lumba memenangkan lomba senam kali ini dengan perolehan point sebesar " + pointlumba.toStringAsFixed(2));
    } else {
      print("Tidak ada tim yang memenangkan lomba senam kali ini, karena keduanya memperoleh nilai yang sama");
    }

  /* 
  Jika salah satu nilai rata rata dari pointlumba atau pointkoala tidak mencapai 100, maka sistem akan menjalankan kode program dibawah. Untuk kodenya sendiri
  sama seperti pada kode yang ada di statement if-else diatas, hanya saja statement berikut langsung dieksekusi tanpa harus melewati persyaratan tertentu 
  */
  } else if (pointlumba < pointkoala) {
    print("TIm Koala memenangkan lomba senam kali ini dengan perolehan point sebesar " + pointkoala.toStringAsFixed(2));
  } else if (pointlumba > pointkoala) {
    print("Tim Lumba Lumba memenangkan lomba senam kali ini dengan perolehan point sebesar " + pointlumba.toStringAsFixed(2));
  } else {
    print("Tidak ada tim yang memenangkan lomba senam kali ini, karena keduanya memperoleh nilai yang sama");
  }
}