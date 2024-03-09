import 'package:flutter/material.dart';
import 'package:quiz_app/models/formated_text.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizData extends StatelessWidget {
  const QuizData(this.quizData, {super.key});

  final List<Map<String, Object>> quizData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: quizData.map((data) {
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.lato(
                    color: Colors.blue,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                        width: 30,
                      ),
                Expanded(
                  child: Column(
                    children: [
                      FormatedText(data['question'] as String, Colors.white,
                          FontWeight.bold, 15, TextAlign.left),
                      const SizedBox(
                        height: 5,
                      ),
                      FormatedText('your answer: ${data['user_answer'] as String}', Colors.pink,
                          FontWeight.bold, 13, TextAlign.left),
                      
                      FormatedText('correct answer: ${data['correct_answer'] as String}',
                          Colors.white, FontWeight.normal, 12, TextAlign.left),
                          const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
