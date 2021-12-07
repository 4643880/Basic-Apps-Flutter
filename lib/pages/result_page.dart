import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,            
            children: [
              const Text("Result Page", style: TextStyle(fontSize: 25)),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Go to home")),      

            ],
          ),
        ),
      ),
    );
  }
}