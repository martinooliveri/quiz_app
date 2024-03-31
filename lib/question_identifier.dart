import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{

  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;


  @override
  Widget build(BuildContext context)
  {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
        ? const Color.fromARGB(255, 150, 198, 241)
        : const Color.fromARGB(255, 150, 198, 241),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(questionNumber.toString())
      
    );
  }

}