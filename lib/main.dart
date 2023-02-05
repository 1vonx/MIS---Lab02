import 'package:flutter/material.dart';

import './model/question.dart';
import './widgets/clothing_answer.dart';
import './widgets/clothing_question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
  }

  var questions = [
    Question(
      questionText: "Select clothing store",
      answers: [
        'Zara',
        'Bershka',
        'Stradivarius',
      ],
    ),
    Question(
      questionText: "Select category",
      answers: [
        'Dresses',
        'Jeans',
        'Shirts',
        'Shoes',
      ],
    ),
    Question(
      questionText: "Select color range",
      answers: [
        'black - white',
        'yellow - red',
        'green - purple',
        'other'
      ],
    ),
  ];
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MIS - Lab02",
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Clothing App"),
            ],
          ),
        ),
        body: Column(
          children: [
            PizzaQuestion(questions[_questionIndex].questionText),
            ...(questions[_questionIndex].answers).map((answer) {
              return PizzaAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}
