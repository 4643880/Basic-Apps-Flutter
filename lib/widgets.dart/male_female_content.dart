import 'package:flutter/material.dart';


class MaleAndFemaleWidget extends StatelessWidget {
  final IconData? iconName;
  final String? titleName;

  const MaleAndFemaleWidget({Key? key, this.iconName, this.titleName}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconName, size: 75, color: Colors.white,),
        const SizedBox(height: 10,),
        Text(titleName?? "", style: const TextStyle(color: Color(0xff8d8e99),), textScaleFactor: 1.6,),
      ],
    );
  }
}




 // Updating Color On Click 
// const myReusableContainerActiveColor =  Color(0xff272A4D);
// const myReusableContainerInActiveColor =  Color(0xff111327);

//   Color maleCardColor = myReusableContainerInActiveColor;
//   Color femaleCardColor = myReusableContainerInActiveColor;
  
  // enum GenderEnum {male , female}
  // void updateColorFunc(GenderEnum gender){    
  //   if(gender == GenderEnum.male){
  //     if(maleCardColor == myReusableContainerInActiveColor){
  //       maleCardColor = myReusableContainerActiveColor;
  //       femaleCardColor = myReusableContainerInActiveColor;        
  //     }else{
  //       maleCardColor = myReusableContainerInActiveColor;
  //       femaleCardColor = myReusableContainerInActiveColor;       
  //     }
  //   }
  //   if(gender == GenderEnum.female){
  //     if(femaleCardColor ==  myReusableContainerInActiveColor){
  //       femaleCardColor = myReusableContainerActiveColor;  
  //       maleCardColor = myReusableContainerInActiveColor;      
  //     }else{
  //       femaleCardColor = myReusableContainerInActiveColor;
  //       maleCardColor = myReusableContainerInActiveColor;
  //     }
  //   }
  // }