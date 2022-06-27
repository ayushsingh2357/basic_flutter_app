import 'package:flutter/material.dart';
import 'package:myapp/cricketer_details/cricketer_details_screen.dart';
import 'package:myapp/quiz_game/quiz_welcome_screen.dart';

void main() {
  //runApp(CricketersDetails());
  runApp(
    const MaterialApp(
      home: QuizWelcomeScreen(quizTitle: "Animal Kingdom Quiz", quizButtonText: "Start Playing",),
      debugShowCheckedModeBanner: false,
    ),
  );
}
