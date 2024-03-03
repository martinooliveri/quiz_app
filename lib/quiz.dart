import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';
import 'package:quiz_app/questions_screen.dart';

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

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
  
    Widget screenWidget = FirstScreen(switchScreen);

    if(activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
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
