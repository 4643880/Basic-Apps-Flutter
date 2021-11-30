import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/widgets.dart/male_female_content.dart';
import 'package:flutter_learning_with_angela/widgets.dart/reusable_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const myBottomContainerHeight = 70.0;
const myBottomContainerColor = Color(0xffeb1556);

const myReusableContainerActiveColor =  Color(0xff272A4D);
const myReusableContainerInActiveColor =  Color(0xff111327);

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
          Container(
            height: 180,
            child: Row(
              children: [
                 Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColorFunc(GenderEnum.male);
                      });
                    },
                    child: MyReusableContainer(
                      color: maleCardColor,
                      myCardChild: const MaleAndFemaleWidget(iconName: FontAwesomeIcons.mars, titleName: "Male",),
                      ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColorFunc(GenderEnum.female);
                      });
                    },
                    child: MyReusableContainer(
                      color: femaleCardColor,
                      myCardChild: const MaleAndFemaleWidget(iconName: FontAwesomeIcons.venus, titleName: "Female",),
                      ),
                  ),
                ),                
              ],
            ),
          ),
          Container(
            height: 180,
            child: Row(
              children: const[
                Expanded(
                  child: MyReusableContainer(
                    color: myReusableContainerInActiveColor,
                    myCardChild: MaleAndFemaleWidget(),
                    ),
                ),    
              ],
            ),
          ),
          Container(
            height: 180,
            child: Row(
              children: const[
                Expanded(
                  child: MyReusableContainer(color: myReusableContainerInActiveColor,),
                ),    
                Expanded(
                  child: MyReusableContainer(color: myReusableContainerInActiveColor,),
                ),    
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: myBottomContainerColor,
            height: myBottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}






