import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScren extends StatefulWidget {
  const QuestionScren({Key? key}) : super(key: key);

  @override
  State<QuestionScren> createState() {
    return _QuestionScrenState();
  }
}

class _QuestionScrenState extends State<QuestionScren> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      
    currentQuestionIndex = currentQuestionIndex + 1;
    });
    // currentQuestionIndex +=1;
    // currentQuestionIndex++;
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 207, 148, 239)
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ...currentQuestion.getShuffledAnswer().map(
              (answer) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnswerButton(answerText: answer, onTap: answerQuestion),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
