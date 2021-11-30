import 'package:flutter/material.dart';

class MyReusableContainer extends StatelessWidget {
  final Color? color;
  final Widget? myCardChild;
  const MyReusableContainer({Key? key, this.color, this.myCardChild }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: myCardChild,
      decoration: BoxDecoration(
        color: color?? Colors.black,
        // color: const Color(0xff272A4D),
        borderRadius: BorderRadius.circular(08),
      ),
      margin: const EdgeInsets.all(16),
    );
  }
}
