import 'dart:io'; //Melakukan import terhadap package dart:io
import 'dart:math'; //Melakukan import terhadap package dart:math, agar kita bisa memanfaatkan beberapa fungsi yang ada pada package tersebut

dynamic bb, tb; //Mendefinisikan 2 variabel dengan tipe data dynamic secara global

/*
Membuat function bmi yang akan mengembalikan nilai num
Hal ini dilakukan agar memisahkan logic perhitungan dengan program utama. Dan juga dapat membuat program utama tidak terlalu panjang
*/
num bmi(){
  return num.parse(bb ?? "") / pow(num.parse(tb ?? ""), 2);
  //Untuk mencari nilai bmi, bisa juga dengan menggunakan rumus ***num.parse(bb ?? "") / num.parse(tb ?? "") * num.parse(tb ?? "")***
}

void main() {
  print("\tPROGRAM INI MERUPAKAN PROGRAM YANG DAPAT DIGUNAKAN UNTUK MEMBANDINGKAN BMI (Body Mass Index)"); //Menampilkan pesan informasi mengenai tujuan dari program ini
  print("Subjek Perbandingan: Mark dan John"); //Menampilkan pesan informasi tentang subjek yang akan digunakan
  
  //Source code dibawah digunakan untuk mendapatkan informasi terkait berat badan dan tinggi badan dari Mark
  print("Data Berat Badan dan Tinggi Badan Mark");
  stdout.write("Berat Badan (kg): "); //Meminta inputan berat badan kepada user
  bb = stdin.readLineSync(); //Menerima inputan berat badan dari user dan disimpan kedalam variabel bb
  stdout.write("Tinggi Badan (m): "); //Meminta inputan tinggi badan kepada user
  tb = stdin.readLineSync(); //Menerima inputan tinggi badan dari user dan disimpan kedalam variabel tb
  var bmimark = bmi(); //Memanggil function bmi yang berisikan logic perhitungan BMI dan disimpan kedalam variabel bmimark

  //Source code dibawah digunakan untuk mendapatkan informasi terkait berat badan dan tinggi badan dari John
  print("\nData Berat Badan dan Tinggi Badan John");
  stdout.write("Berat Badan (kg): ");
  bb = stdin.readLineSync();
  stdout.write("Tinggi Badan (m): ");
  tb = stdin.readLineSync();
  var bmijohn = bmi(); //Memanggil function bmi yang berisikan logic perhitungan BMI dan disimpan kedalam variabel bmijohn
  print("\nHasil Perhitungan BMI yang didapat:");
  print("BMI Mark : " + bmimark.toStringAsFixed(1)); //Menampilkan hasil perhitungan BMI Mark dan hanya menampilkan hingga 1 angka dibelakang koma
  print("BMI John : " + bmijohn.toStringAsFixed(1)); //Menampilkan hasil perhitungan BMI John dan hanya menampilkan hingga 1 angka dibelakang koma

  //Membuat sebuah variabel markHigherBMI dengan tipe data boolean yang akan menghasilkan nilai true jika nilai perhitungan bmimark > bmijohn
  bool markHigherBMI = bmimark > bmijohn;

  /*
  Menggunakan statement if-else untuk menentukan output yang berbeda dari 2 kondisi yang berbeda
  Jika pernyataan markHigherBMI benar, maka sistem akan mengeluarkan output bahwa Mark memiliki nilai BMI yang lebih besar dibandingkan dengan nilai BMI John
  Dan jika pernyataan tersebut salah, maka sistem akan menampilkan output yang sebaliknya, yakni nilai BMI John lebih besar dibandingkan dengan nilai BMI Mark
  */
  if(markHigherBMI == true){
    print("Berdasarkan hasil perhitungan BMI yang telah dilakukan, dapat disimpulkan bahwa Mark memiliki nilai BMI yang lebih besar dibandingkan John");
  }else{
    print("Berdasarkan hasil perhitungan BMI yang telah dilakukan, dapat disimpulkan bahwa John memiliki nilai BMI yang lebih besar dibandingkan Mark");
  }
}