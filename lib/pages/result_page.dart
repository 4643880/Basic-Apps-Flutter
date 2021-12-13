import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/pages/input_page_widgets/bottom_button.dart';
import 'package:flutter_learning_with_angela/widgets.dart/myconstants.dart';
import 'package:flutter_learning_with_angela/widgets.dart/reusable_container.dart';
import 'package:google_fonts/google_fonts.dart';



class ResultPage extends StatelessWidget {

  const ResultPage({
    Key? key,
    required this.bmiText,
    required this.bmiResult,
    required this.bmiFeedback,
  }) : super(key: key);
  
  final String bmiText;
  final String bmiResult;  
  final String bmiFeedback;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: Drawer(),
        appBar: AppBar(
            title: const Text('BMI Calculator'),
            ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Align(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Your Result",
                      style: TextStyle(
                        fontSize: 55,
                        fontFamily: GoogleFonts.libreBaskerville().fontFamily,
                      ),
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: MyReusableContainer(
                  color: kReusableContainerActiveColor,
                  myCardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        bmiText,
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            color: Colors.green),
                      ),
                      Text(bmiResult,
                          style: kSliderHeadingStyle.copyWith(
                            fontSize: 100,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          bmiFeedback,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.almarai().fontFamily,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            // const SizedBox(
            //   height: 30,
            // ),
            MyBottomButton(
                buttonName: "Re-Calculate",
                onClick: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
