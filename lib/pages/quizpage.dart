import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_learning_with_angela/pages/quizbrainfile.dart';

class QuizAppPage extends StatefulWidget {
  const QuizAppPage({Key? key}) : super(key: key); 

  @override
  _QuizAppPageState createState() => _QuizAppPageState();
}

class _QuizAppPageState extends State<QuizAppPage> {

  // It is adding the icons 
  List<Widget> scoreKeeperList = [
    // Examples 
    // const Icon(Icons.check, color: Colors.green,),
    // const Icon(Icons.close, color: Colors.red,),    
  ];

  // Answers Checking Function
  void answerCheckingFunc(bool usersAns){
    setState(() {       
        
        if(brainObj.FinishedFunc() == true){
          brainObj.reset();

          // List will be empty and will not overflow
          scoreKeeperList = [];

          Alert(
                context: context,
                title: "Finished!",
                desc: "You have reached the end of Quiz."
                ).show();          
          }
           
        else{
            bool correctAns = brainObj.getQuestionsAnsFunc();
            if(usersAns == correctAns){

              scoreKeeperList.add(
              const Icon(Icons.check, color: Colors.green,),
              );

            }
            else{
              scoreKeeperList.add(
              const Icon(Icons.close, color: Colors.red,),
              );
             
            }
        }
        

        brainObj.nextQuestionFunc();

    });
  }

  // Getting All Questions and Ans with this object
  QuizBrainClass brainObj = QuizBrainClass();

  // List<String> questionsList = [
  //   "Is Mr. Nadeem Zaidi HOD of CIT Department?",
  //   "Hafeez Jallandri Composed the verses of Pakistan national Anthem?",
  //   "Are 37 letters in there Urdu alphabets?",
  //   "The Word 'Urdu' means 'Believers'?",
  //   "PPI is not situated in Lahore?"    
  // ];

  // List<bool> answersList = [true, true, true, false, false];
  // int questionCounter = 0;  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, right: 32, left: 32, bottom: 5),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Expanded(          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    child: Text(
                      brainObj.getQuestionTextFunc(),
                      textAlign: TextAlign.justify,  
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 50,
            // ),
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: Colors.white,
                      fixedSize: const Size(250, 60),
                      primary: Colors.orange,
                      side: const BorderSide(color: Colors.orange),
                    ),
                    onPressed: () {
                      answerCheckingFunc(true);
                    },
                    child: const Text(
                      "True",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: Colors.white,
                      fixedSize: const Size(250, 60),
                      primary: Colors.red,
                      side: const BorderSide(color: Colors.red),
                    ),
                    onPressed: () {
                      answerCheckingFunc(false);
                    },
                    child: const Text(
                      "False",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,                      
                  ),
                  const Divider(thickness: 2, color: Colors.amber),                    
                  Row(
                    children: scoreKeeperList,                    
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// You can lead a cow down stairs but not up stairs    false
// Approximately  one quarter of human bones are in the feet  true
// A slug's blood is green   true
