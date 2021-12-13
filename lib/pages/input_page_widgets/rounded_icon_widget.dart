import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/widgets.dart/myconstants.dart';

class MyRoundedIconButton extends StatelessWidget {
  const MyRoundedIconButton({Key? key, this.mychild, this.updateWidthFunc})
      : super(key: key);
  final Widget? mychild;
  final Function()? updateWidthFunc;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      hoverColor: Colors.green,
      constraints: const BoxConstraints.tightFor(height: 40, width: 40),
      shape: const CircleBorder(),
      fillColor: kBottomContainerColor,
      child: mychild,
      onPressed: updateWidthFunc,
    );
  }
}