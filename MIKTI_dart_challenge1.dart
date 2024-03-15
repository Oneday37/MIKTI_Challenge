import 'dart:io';

void main(){
  stdout.write("Silahkan masukkan nama anda: "); //Menampilkan perintah untuk memasukkan nama
  String? name = stdin.readLineSync(); //Menerima inputan dari user dan data akan disimpan kedalam variabel name dengan tipe data string
  print("Nama anda adalah $name\n"); //Menampilkan output sesuai dengan inputan yang telah dimasukkan

  stdout.write("Silahkan masukkan jurusan anda: "); //Menampilkan perintah untuk memasukkan jurusan perkuliahan
  String? jurusan = stdin.readLineSync(); //Menerima inputan dari user dan disimpan kedalam variabel jurusan dengan tipe data string
  print("Jurusan kuliah anda: $jurusan\n"); //Menampilkan output sesuai dengan inputan yang telah dimasukkan
  print("Halo $name, Anda berkuliah dijurusan $jurusan"); //Menampilkan output berupa nama dan jurusan sesuai dengan inputan yang telah dimasukkan
}