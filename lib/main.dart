import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          title: const Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue,
        ),
        body: const BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var num = 1;
  void RandomFunc() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      RandomFunc();
                    },
                    child: Image(image: AssetImage("images/ball$num.png")))),
          ],
        ),
      ),
    );
  }
}
