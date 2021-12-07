import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/pages/result_page.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,            
            children: [
              const Text("Demo Page", style: TextStyle(fontSize: 25)),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Go to home")),  
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
              }, child: const Text("Go to Result Page")),      

            ],
          ),
        ),
      ),
    );
  }
}