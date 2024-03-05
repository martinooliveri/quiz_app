import 'package:flutter/material.dart';

class QuizData extends StatelessWidget {
  const QuizData(this.quizData, {super.key});

  final List<Map<String, Object>> quizData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: quizData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(data['question'] as String),
                const SizedBox(height: 5,),
                Text(data['user_answer'] as String),
                Text(data['correct-answer'] as String),
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
