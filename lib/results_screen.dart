import 'package:quiz_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getQuizData() {
    final List<Map<String, Object>> quizData = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      quizData.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct-answer': questions[i].answers[0],
          'user-answer': chosenAnswers[i]
        },
      );
    }

    return quizData;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Correctly answered questions: X of Y'),
            const SizedBox(
              height: 30,
            ),
            QuizData(getQuizData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
