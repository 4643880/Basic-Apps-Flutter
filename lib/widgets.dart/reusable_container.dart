import 'package:flutter/material.dart';

class MyReusableContainer extends StatelessWidget {
  final Color? color;
  final Widget? myCardChild;
  final Function()? myClickedFunc;
  const MyReusableContainer({Key? key, this.color, this.myCardChild,this.myClickedFunc }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myClickedFunc,
      child: Container(
        child: myCardChild,
        decoration: BoxDecoration(
          color: color?? Colors.black,
          // color: const Color(0xff272A4D),
          borderRadius: BorderRadius.circular(08),
        ),
        margin: const EdgeInsets.symmetric(vertical: 010, horizontal: 16),
      ),
    );
  }
}
