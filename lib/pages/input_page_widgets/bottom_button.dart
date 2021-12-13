
import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/utils/routes.dart';
import 'package:flutter_learning_with_angela/widgets.dart/myconstants.dart';
import 'package:google_fonts/google_fonts.dart';


class MyBottomButton extends StatelessWidget {
  const MyBottomButton({
    Key? key, required this.buttonName,  required this.onClick
  }) : super(key: key);
  final String buttonName;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
          margin: const EdgeInsets.only(top: 15),
          color: kBottomContainerColor,
          height: kBottomContainerHeight,
          width: double.infinity,
          child: Center(
              child: Text(
            buttonName,
            style: kCalculateButtonStyle.copyWith(
                fontFamily: GoogleFonts.almarai().fontFamily),
          ))),
    );
  }
}