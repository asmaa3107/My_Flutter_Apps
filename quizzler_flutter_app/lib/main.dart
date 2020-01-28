import 'package:flutter/material.dart';

import 'controllers/QuestionsClass.dart';

//creating object from question class
QuestionsController questions= QuestionsController();


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> answerIcons = [];
  void checkUserAnswer(bool userAnswerValue){
   bool correctAnswer = questions.getQuestionAnwer();
                if (correctAnswer == userAnswerValue) {
                  answerIcons.add(Icon(Icons.check, color: Colors.green));
                  print('user got it Right ..');
                } else {
                  answerIcons.add(Icon(Icons.close, color: Colors.red));
                  print('user got it Wrong ..');
                }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
             
checkUserAnswer(true);
                setState(() {
                  //print(qNum);
                 questions.nextQuestion();
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
              checkUserAnswer(false);

                setState(() {
                   questions.nextQuestion();
                });
              },
            ),
          ),
        ),
        Row(
          children: answerIcons,
        ),
      ],
    );
  }
}

