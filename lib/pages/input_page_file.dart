import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(08),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: MyReusableContainer(color: Color(0xff272A4D),),
                ),
                Expanded(
                  child: MyReusableContainer(color: Color(0xff272A4D),),
                ),                
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const[
                Expanded(
                  child: MyReusableContainer(color: Color(0xff272A4D),),
                ),    
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const[
                Expanded(
                  child: MyReusableContainer(color: Color(0xff272A4D),),
                ),    
                Expanded(
                  child: MyReusableContainer(color: Color(0xff272A4D),),
                ),    
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyReusableContainer extends StatelessWidget {
  final Color? color;

  const MyReusableContainer({Key? key, this.color, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color?? Colors.black,
        // color: const Color(0xff272A4D),
        borderRadius: BorderRadius.circular(08),
      ),
      margin: const EdgeInsets.all(16),
    );
  }
}


