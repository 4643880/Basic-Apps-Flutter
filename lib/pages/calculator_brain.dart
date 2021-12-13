import 'dart:math';

class CalculatorBrain{
  // CalculatorBrain(this.weight, this.height);

  
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  late double _bmi;


  String calculateFunc(){
    _bmi =  weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String textResultFunc(){
    if(_bmi <= 18.5){
      return "Underweight";
    }
    else if(_bmi > 18.5 && _bmi <= 24.9){
      return "Normal";
    }
    else if(_bmi > 25.0 && _bmi <= 29.9){
      return "Overweight";
    }
    else if(_bmi >= 30.0){
      return "Obese";
    }
    else{
      return "Something Went Wrong";
    }
  }


    String feedbackFunc(){
    if(_bmi <= 18.5){
      return "You have lower than normal weight. You can eat a more.";
    }
    else if(_bmi > 18.5 && _bmi <= 24.9){
      return "You have normal weight. Good Job!";
    }
    else if(_bmi > 25.0 && _bmi <= 29.9){
      return "You are overweight. Try to do more exercise.";
    }
    else if(_bmi >= 30.0){
      return "You are fat. Change you diet plan and try to do more exercise.";
    }
    else{
      return "Something Went Wrong";
    }
  }
  
}