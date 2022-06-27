import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/quiz_game/quiz_gamescreen.dart';

class QuizWelcomeScreen extends StatelessWidget {
  final String quizTitle;
  final String quizButtonText;
  const QuizWelcomeScreen(
      {Key? key, required this.quizTitle, required this.quizButtonText})
      : super(key: key);

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
        padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
        child: Column(
          children: [
            Text(
              quizTitle,
              style: GoogleFonts.fredokaOne(
                fontSize: 65,
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
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuizGameScreen()));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    primary: Colors.deepPurpleAccent.withOpacity(.9),
                    textStyle: GoogleFonts.fredokaOne(
                      fontSize: 25,
                      shadows: const [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(3, 3),
                          blurRadius: 4,
                        ),
                      ],
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(quizButtonText),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
