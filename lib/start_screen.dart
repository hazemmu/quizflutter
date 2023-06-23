import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 30),
           Text(
            'Learn Flutter The Fun Way!',
            style: GoogleFonts.lato(
              color:const Color.fromARGB(255, 130, 127, 127),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              fixedSize: const Size(200, 40),
            ),
            icon: const Icon(Icons.arrow_right),
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
