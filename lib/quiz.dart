import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  /*Widget? activeScreen;

  @override
  void initState(){
    activeScreen = FirstScreen(switchScreen);
    super.initState();
  }*/
  var activeScreen = 'first-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length)
    {
      setState(() {
      activeScreen = 'result-screen';
    });
    }
  }


  @override
  Widget build(context) {
  
    Widget screenWidget = FirstScreen(switchScreen);

    if(activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if(activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightGreen, Colors.lightBlue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //child: activeScreen <--- Widget
          child: screenWidget,
        ),
      ),
    );
  }
}
