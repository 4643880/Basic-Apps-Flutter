import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/widgets.dart/myconstants.dart';

class MyTheme{
  static appTheme(BuildContext context) => ThemeData(
    // primaryColor: Color(0xff0C1135),
    // backgroundColor: Color(0xff0C1135),
    scaffoldBackgroundColor: const Color(0xff0C1135),
    // canvasColor: const Color(0xff0C1135),
    appBarTheme: const AppBarTheme(
      color: Color(0xff0C1135),
      shadowColor: Colors.black,
      elevation: 30.0,
    ),


    sliderTheme:  const SliderThemeData(   
      activeTrackColor: kactiveSliderColor,    
      thumbColor: kBottomContainerColor, 
      inactiveTrackColor: kInactiveSliderColor, 
      overlayColor: kSliderOverlayColor,                         
      // activeColor: kBottomContainerColor,
      // inactiveColor: kLabelStyling.color,
      // thumbColor: Colors.green,
      thumbShape: RoundSliderThumbShape(        
        enabledThumbRadius: 12,        
      ),
      // overlayShape: RoundSliderOverlayShape(
      //   overlayRadius: 18
      // )
      // activeTrackColor: Color(0xffffffff),      
      // thumbShape: SliderComponentShape.noThumb,
    ),



    textTheme: const TextTheme(
      // bodyText1: TextStyle(color: Colors.red),
      bodyText2: TextStyle(color: Colors.white),
    ),
    iconTheme: IconThemeData(color: Colors.white),

  );
}




// class MyTheme {

//       static lightTheme(BuildContext context) => ThemeData(
//         accentColor: Colors.black,
//         cardColor: Colors.white,
//         canvasColor: MyTheme.myCreamColor,
//         buttonColor: Colors.deepPurple,
//         primarySwatch: Colors.deepPurple,
//         fontFamily: GoogleFonts.poppins().fontFamily,
//         // colorScheme: ColorScheme.light(),
//         appBarTheme: AppBarTheme(
//           color: Colors.white,
//           elevation: 0.0,
//           iconTheme: IconThemeData(color: Colors.black),
//           textTheme: Theme.of(context).textTheme,
//         ),
//       );


//       static darkTheme(BuildContext context) => ThemeData(
//         accentColor: Colors.white,        
//         cardColor: Colors.black,
//         canvasColor: MyTheme.mydarkGrayColor,
//         buttonColor: MyTheme.myLightBlue,
//         primarySwatch: Colors.deepPurple,
//         fontFamily: GoogleFonts.poppins().fontFamily,        
//         // colorScheme: ColorScheme.dark(),
//         appBarTheme: AppBarTheme(
//           color: Colors.black,
//           elevation: 0.0,
//           iconTheme: IconThemeData(color: Colors.white),
//           textTheme: Theme.of(context).textTheme,
//         brightness: Brightness.dark
//         ),

//       );




//       // Colors
//       static Color myCreamColor = Color(0xfff5f5f5);
//       static Color mydarkGrayColor = Vx.gray900;
//       static Color myDarkBlue = Color(0xff403b58);
//       static Color myLightBlue = Vx.indigo800;
//       static Color myGreyColor = Color(0xff878787);     


// }