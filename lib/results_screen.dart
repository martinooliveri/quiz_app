import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/models/formated_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

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
    final resultText = 'Correctly answered questions: $numberOfCorrectQs out of $numberOfQs!';

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormatedText(resultText, Colors.white, FontWeight.bold, 26, TextAlign.center),
            
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
              onPressed: restartQuiz,
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
