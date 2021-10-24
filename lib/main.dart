import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Center(child: Text("I Am Rich")),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
              image: AssetImage("images/diamond-1857733_1280.png")),
        ),
      ),
    );
  }
}
