# MIKTI Challenge 1
Pada MIKTI challenge 1 ini, saya membuat sebuah program basic dengan menggunakan bahasa dart. Program tersebut merupakan sebuah program yang akan menerima inputan berupa nama dan jurusan dari user dan menampilkannya ke layar sesuai dengan inputan yang telah dimasukkan oleh user

# MIKTI Challenge 2
Pada MIKTI Challenge 2 kali ini, saya membuat sebuah program konversi suhu dari fahrenheit / reamur / kelvin ke celcius. Program ini hampir sama, seperti pada MIKTI Challenge 1, hanya saja pada kode program kali ini saya memasukkan statement percabangan if-else didalamnya

NOTE
Untuk menerima inputan dari user, digunakanlah function stdin.readLineSync() yang dimana inputan yang akan diterima nantinya bertipe data STRING atau NULL. Karena pada saat melakukan konversi tipe data dari String -> int WAJIB ada data stringnya, maka pada saat konversi saya menggunakan statement if-else yang saya singkat dengan menggunakan "??". Karena stdin.readLineSync() juga dapat menerima inputan berupa NULL makanya jika kita menuliskannya tanpa menggunakan "??" itu akan error, maka dari itu saya menambahkan statement tersebut yang dimana jika data dari temp (inputan suhu dari user) dianggap NULL, maka ia akan mengembalikan nilai 0 dengan tipe data string dan jika nilai temp ada maka ia akan mengambil nilai temp. Hal ini memastikan bahwa objek yang akan dikonversi benar benar bertipe data String. Source: https://youtu.be/axw5Z2UumBw?si=RdWxJQYF_O3ZCmfw
