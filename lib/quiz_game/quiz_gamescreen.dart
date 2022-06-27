import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/quiz_game/models/quiz_model.dart';
import 'package:myapp/quiz_game/quiz_welcome_screen.dart';

class QuizGameScreen extends StatefulWidget {
  const QuizGameScreen({Key? key}) : super(key: key);

  @override
  State<QuizGameScreen> createState() => _QuizGameScreenState();
}

class _QuizGameScreenState extends State<QuizGameScreen> {
  List quiz = [q1, q2, q3];
  QuizModel currentQuiz = q1;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(
                  image: AssetImage("assets/images/animal_kingdom.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
                child: Column(children: [titleView(), quizViewBox(context)]))));
  }

  Text titleView() {
    return Text(
      "Animal Kingdom Quiz",
      style: GoogleFonts.fredokaOne(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        shadows: const [
          Shadow(
            color: Colors.black,
            offset: Offset(5, 5),
            blurRadius: 4,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Padding quizViewBox(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          color: Colors.greenAccent.withOpacity(.7),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: [questionsView(), optionListView()],
          ),
        ),
      ),
    );
  }

  Text questionsView() {
    return Text(currentQuiz.question,
        textAlign: TextAlign.center,
        style: GoogleFonts.fredokaOne(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          shadows: const [
            Shadow(
              color: Colors.black,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
        ));
  }

  Container optionListView() {
    return Container(
      height: 370,
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 15),
          itemCount: currentQuiz.options.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () => optionTapped(index),
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white54,
                          width: 1,
                        )),
                    child: Text(
                      currentQuiz.options[index],
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 2,
                        shadows: const [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
            );
          }),
    );
  }

  optionTapped(int index) {
    if (index == currentQuiz.answer) {
      setState(() {
        if (currentIndex < quiz.length - 1) {
          currentIndex++;
          currentQuiz = quiz[currentIndex];
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const QuizWelcomeScreen(
                        quizTitle: "You Won the Game",
                        quizButtonText: "Play Again",
                      )));
        }
      });
    }
  }
}
