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
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return quizData;
  }

  @override
  Widget build(BuildContext context) {

    final quizData = getQuizData();
    final numberOfQs = questions.length;
    final numberOfCorrectQs = quizData.where((data) {
      return data['user_answer'] == data['correct_answer'];  
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Correctly answered questions: $numberOfCorrectQs of $numberOfQs'),
            const SizedBox(
              height: 10,
            ),
            QuizData(
              quizData,
            ),
            const SizedBox(
              height: 100,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
