import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Image.asset(
              'assets/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(120, 255, 255, 255)
            ),
          
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text('Star Quiz'),
            
          ),
        ],
      ),
    );
  }
}
