import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percobaan Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
        ),
        home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Class Exercise')
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  child: Text("Row 1", style: TextStyle(fontSize: 30))),
                SizedBox(width: 10,),
                  Container(
                    color: Colors.blue,
                    child: Text("Row 2", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10,),
                  Container(
                    color: Colors.green,
                    child: Text("Row 3", style: TextStyle(fontSize: 30),)
                  ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.black,
                  width: 250,
                  height: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 200,
                  height: 80,
                ),
                Container(
                  color: Colors.purple,
                  width: 150,
                  height: 60,
                ),
                Container(
                  color: Colors.blue[800],
                  width: 100,
                  height: 40,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}