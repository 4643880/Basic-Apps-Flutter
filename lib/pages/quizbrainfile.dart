import 'package:flutter_learning_with_angela/pages/myquestion.dart';

class QuizBrainClass{

  int _questionCounter = 0;

  int _rightResultCounter = 0;
  int _wrongResultCounter = 0;

  // This is list of Question's Constructor and question's constructor is without named I mean it's not named constructor
  final List<QuestionClass> _myQuestionBank = [
    QuestionClass("Is Mr. Nadeem Zaidi HOD of CIT Department?",  true),
    QuestionClass("Hafeez Jallandri Composed the verses of Pakistan national Anthem?", true),
    QuestionClass("Are 37 letters in there Urdu alphabets?", true),
    QuestionClass("The Word 'Urdu' means 'Believers'?", false),
    QuestionClass( "PPI is not situated in Lahore?", false),    
  ];

  void nextQuestionFunc(){
    if(_questionCounter < _myQuestionBank.length -1 ){
      _questionCounter = _questionCounter + 1;
      // print(_questionCounter);
      // print(_myQuestionBank.length);
    }
  }

  String getQuestionTextFunc(){
    return _myQuestionBank[_questionCounter].questionText;
  }

  bool getQuestionsAnsFunc(){
    return _myQuestionBank[_questionCounter].questionAnswer;
  }

  bool FinishedFunc(){
    if(_questionCounter >= _myQuestionBank.length -1){
      return true; 
    }
    else{
      return false;
    }
  }

  void reset(){
    _questionCounter = -1;
  }

  
}


