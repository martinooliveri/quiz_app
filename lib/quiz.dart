import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';

class QuizScreen extends StatefulWidget {
  
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState(){
    return _QuizScreen();
  }

}

class _QuizScreen extends State<QuizScreen> {
  @override
  Widget build(context) {
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
          child: const FirstScreen()),
    ),
  );
  }
}