import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          title: const Center(child: Text('Xylophone')),
          backgroundColor: Colors.lime,
        ),
        body: Column(
          children: [
            Button(Colors.red, 1),
            Button(Colors.orange, 2),
            Button(Colors.yellow, 3),
            Button(Colors.green, 4),
            Button(Colors.teal, 5),
            Button(Colors.blue, 6),
            Button(Colors.deepPurple, 7),
          ],
        ),
      ),
    );
  }

 
 Expanded Button(Color color, var num) {
    return Expanded(
      child: InkWell(
            onTap: (){
              final player = AudioCache();
              player.play('note$num.wav');
            },
            child: Container(       
              color: color,
            ),
          ),
    );
  }
}




//  InkWell Button(Color color, var num) {
//     return InkWell(
//           onTap: (){
//             final player = AudioCache();
//             player.play('note$num.wav');
//           },
//           child: Container(
//             height: 50,
//             width: double.infinity,            
//             color: color,
//           ),
//         );
//   }
// }
