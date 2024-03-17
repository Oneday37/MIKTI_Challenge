import 'dart:io';

num temp = 0, celcius = 0;

void fahrenheit(){
  stdout.write("Masukkan suhu dalam derajat Fahrenheit: "); //Pada line ini, sistem akan menampilkan sebuah pesan kepada user
  var temp = stdin.readLineSync(); //Inputan yang telah dimasukkan oleh user, akan bertipe data String dan disimpan kedalam variabel temp
  num fahrentemp = int.parse(temp ?? "0"); //Baris ini akan menyimpan nilai yang dimasukkan oleh user kedalam variabel fahrentemp dengan tipe data num
  celcius = (fahrentemp - 32) * 5 / 9; //Rumus konversi suhu dari fahrenheit ke celcius yang disimpan kedalam variabel celcius

  print("$fahrentemp derajat Fahrenheit = $celcius derajat Celcius");
}

void reamur(){
  stdout.write("Masukkan suhu daalm derajar Reamur: "); //Pada line ini, sistem akan menampilkan sebuah pesan kepada user
  var temp = stdin.readLineSync(); //Inputan yang telah dimasukkan oleh user, akan bertipe data String dan disimpan kedalam variabel temp
  num reamurtemp = int.parse(temp ?? "0"); //Baris ini akan menyimpan nilai yang dimasukkan oleh user kedalam variabel reamurtemp dengan tipe data num
  celcius = (5 / 4) * reamurtemp; //Rumus konversi suhu dari reamur ke celcius yang disimpan kedalam variabel celcius

  print("$reamurtemp derajat Reamur = $celcius derajat Celcius");
}

void kelvin(){
  stdout.write("Masukkan suhu dalam derajat Kelvin: "); //Pada line ini, sistem akan menampilkan sebuah pesan kepada user
  var temp = stdin.readLineSync(); //Inputan yang telah dimasukkan oleh user, akan bertipe data String dan disimpan kedalam variabel temp
  num kelvintemp = int.parse(temp ?? "0"); //Baris ini akan menyimpan nilai yang dimasukkan oleh user kedalam variabel kelvintemp dengan tipe data num
  celcius = kelvintemp - 273; //Rumus konversi suhu dari kelvin ke celcius yang disimpan kedalam variabel celcius

  print("$kelvintemp derajat Kelvin = $celcius derajat Celcius");
}

void main(){
  //Pada line 34 - 37 program akan menampilkan beberapa informasi yang dimana informasi tersebut merupakan option yang tersedia untuk melakukan konversi suhu
  print("Silahkan memilih jenis konversi yang anda inginkan:");
  print("1. Fahrenheit -> Celcius");
  print("2. Reamur -> Celcius");
  print("3. Kelvin -> Celcius");
  stdout.write("Masukkan pilihan anda: "); //Pada line ini, sistem akan menampilkan sebuah pesan yang nantinya harus diisikan oleh user
  var choice = stdin.readLineSync(); //Pada line ini, nantinya system akan meminta inputan dari user dan akan ditampung kedalam variabel choice

  //Membuat sebuah variabel dengan nama realchoice dan tipe datanya integer yang akan menyimpan hasil konversi dari inputan yang berupa string menjadi integer
  int realchoice = int.parse(choice ?? "0");

  /*
  Membuat condition statement dengan menggunakan if-else statement
  Jika user menginput angka 1, maka sistem akan mengeksekusi seluruh baris kode yang ada dalam function fahrenheit()
  Jika user menginput angka 2, maka sistem akan mengeksekusi seluruh baris kode yang ada dalam function reamur()
  Jika user menginput angka 3, maka sistem akan mengeksekusi seluruh baris kode yang ada dalam function kelvin()
  Jika user menginput angka selain 1, 2 dan 3, maka sistem tidak akan mengembalikan nilai apapun atau null
  */
  if(realchoice == 1){
    fahrenheit();
  }else if(realchoice == 2){
    reamur();
  }else if(realchoice == 3){
    kelvin();
  }else{
    return null;
  }
}

