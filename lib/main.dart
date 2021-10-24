import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      home: Scaffold(
        backgroundColor: Colors.teal,        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                // backgroundColor: Colors.red,
                radius: 60,
                backgroundImage: AssetImage("images/2.jpg"),
                // backgroundImage: ,
              ),
              const Text(
                "Aizaz Haider",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico"),
              ),
              Text(
                "Flutter Software Engineer",
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.teal[50],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.merriweather().fontFamily,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 08),
                child: Divider(color: Colors.white38, thickness: 2,),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 32, vertical:12),
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.phone, size: 30, color: Colors.black,),
                    title: Text(
                          "+923124643880",
                          style: TextStyle(
                            letterSpacing: 2.0,
                            color: const Color(0xff00796B),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                          ),
                        ),
                  )
                  ),
                   Card(
                margin: const EdgeInsets.symmetric(horizontal: 32, vertical:12),                
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.email, size: 30, color: Colors.black,),
                    title: Text(
                          "contact@aizazhaider.com",
                          style: TextStyle(
                            letterSpacing: 2.0,
                            color: const Color(0xff00796B),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                          ),
                        ),
                  )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}


// Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         const SizedBox(width: 08,),
//                         const Icon(Icons.phone, size: 30),
//                         const SizedBox(width: 12,),
//                         Text(
//                           "+923124643880",
//                           style: TextStyle(
//                             letterSpacing: 2.0,
//                             color: Colors.teal.shade600,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: GoogleFonts.sourceSansPro().fontFamily,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )