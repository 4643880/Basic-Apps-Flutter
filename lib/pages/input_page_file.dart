import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/pages/calculator_brain.dart';
import 'package:flutter_learning_with_angela/pages/input_page_widgets/bottom_button.dart';
import 'package:flutter_learning_with_angela/pages/input_page_widgets/rounded_icon_widget.dart';
import 'package:flutter_learning_with_angela/pages/result_page.dart';
import 'package:flutter_learning_with_angela/utils/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_learning_with_angela/widgets.dart/male_female_content.dart';
import 'package:flutter_learning_with_angela/widgets.dart/myconstants.dart';
import 'package:flutter_learning_with_angela/widgets.dart/reusable_container.dart';

enum GenderEnum { male, female }
GenderEnum? selectingGender;

int _currentSliderValue = 160;
int _weightValue = 60;
int _ageValue = 20;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            height: 180,
            child: Row(
              children: [
                Expanded(
                  child: MyReusableContainer(
                    myClickedFunc: () {
                      setState(() {
                        selectingGender = GenderEnum.male;
                      });
                    },
                    color: selectingGender == GenderEnum.male
                        ? kReusableContainerActiveColor
                        : kReusableContainerInActiveColor,
                    myCardChild: const MaleAndFemaleWidget(
                      iconName: FontAwesomeIcons.mars,
                      titleName: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: MyReusableContainer(
                    myClickedFunc: () {
                      setState(() {
                        selectingGender = GenderEnum.female;
                      });
                    },
                    color: selectingGender == GenderEnum.female
                        ? kReusableContainerActiveColor
                        : kReusableContainerInActiveColor,
                    myCardChild: const MaleAndFemaleWidget(
                      iconName: FontAwesomeIcons.venus,
                      titleName: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 180,
            child: Row(
              children: [
                Expanded(
                  child: MyReusableContainer(
                    color: kReusableContainerInActiveColor,
                    myCardChild: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          Text("Height",
                              style: kLabelStyling.copyWith(
                                  fontFamily: GoogleFonts.lato().fontFamily)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(_currentSliderValue.toString(),
                                  style: kSliderHeadingStyle.copyWith(
                                      fontFamily:
                                          GoogleFonts.lora().fontFamily)),
                              Text(
                                "CM",
                                style: kLabelStyling.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                          Slider(
                              value: _currentSliderValue.toDouble(),
                              min: 100,
                              max: 220,
                              label: _currentSliderValue.toStringAsFixed(2),
                              divisions: 200,
                              onChanged: (value) {
                                setState(() {
                                  _currentSliderValue = value.toInt();
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 180,
            child: Row(
              children: [
                Expanded(
                  child: MyReusableContainer(
                    color: kReusableContainerInActiveColor,
                    myCardChild: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Weight",
                            style: kLabelStyling,
                          ),
                          Text(
                            _weightValue.toString(),
                            style: kSliderHeadingStyle.copyWith(
                                fontSize: 45,
                                fontFamily: GoogleFonts.lora().fontFamily),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyRoundedIconButton(
                                  updateWidthFunc: () {
                                    setState(() {
                                      _weightValue = _weightValue + 1;
                                    });
                                  },
                                  mychild: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  )),
                              MyRoundedIconButton(
                                  updateWidthFunc: () {
                                    setState(() {
                                      _weightValue = _weightValue - 1;
                                    });
                                  },
                                  mychild: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyReusableContainer(
                    color: kReusableContainerInActiveColor,
                    myCardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: kLabelStyling,
                        ),
                        Text(
                          _ageValue.toString(),
                          style: kSliderHeadingStyle.copyWith(
                              fontSize: 45,
                              fontFamily: GoogleFonts.lora().fontFamily),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyRoundedIconButton(
                                updateWidthFunc: () {
                                  setState(() {
                                    _ageValue = _ageValue + 1;
                                  });
                                },
                                mychild: const Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                )),
                            MyRoundedIconButton(
                                updateWidthFunc: () {
                                  setState(() {
                                    _ageValue = _ageValue - 1;
                                  });
                                },
                                mychild: const Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text("Designed by Aizaz Haider", style: TextStyle()),
            ),
          ),
          // SizedBox(height: 70,),
          MyBottomButton(
            buttonName: "Calculate",
            onClick: () {

              CalculatorBrain obj = CalculatorBrain(height: _currentSliderValue, weight: _weightValue);

              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(                
                bmiResult: obj.calculateFunc(),
                bmiText: obj.textResultFunc() ,
                bmiFeedback: obj.feedbackFunc(),
                ) ));
            },
          ),
        ],
      ),
    );
  }
}


