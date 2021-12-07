import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/pages/demo_page.dart';
import 'package:flutter_learning_with_angela/pages/input_page_file.dart';
import 'package:flutter_learning_with_angela/pages/result_page.dart';
import 'package:flutter_learning_with_angela/pages/utils/routes.dart';
import 'package:flutter_learning_with_angela/widgets.dart/my_theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   appBarTheme: const AppBarTheme(
      //   color: Color(0xff0C1135),
      //   shadowColor: Colors.black,
      //   elevation: 30.0,
      //   ),
      // ),
      theme: MyTheme.appTheme(context),
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMI Calculator')),          
        ),
        body: const InputPage(),
      ),
      // initialRoute: MyRoutes.inputRoute,
      routes: {
        MyRoutes.inputRoute: (context) => const InputPage(),
        MyRoutes.resultPageRoute : (context) => const ResultPage(),
        MyRoutes.demoPageRoute : (context) => const DemoPage(),
      },
    );
  }
}