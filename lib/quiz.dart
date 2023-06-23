import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import './start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  // var activeScreen = 'start-screen';
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScren();
    });
  }

  @override
  Widget build(contex) {
    // Widget screenWidget = StartScreen(switchScreen);
    // if (activeScreen == 'qusetions-screen') {
    //   screenWidget = const QuestionScren();
    // }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          // screenWidget
          // activeScreen == 'start-screen' ? QuestionScren(switchScreen()) : QuestionScren()
        ),
      ),
    );
  }
}
