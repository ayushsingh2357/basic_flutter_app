import 'package:flutter/material.dart';

class CricketersDetails extends StatefulWidget {
  const CricketersDetails({Key? key}) : super(key: key);

  @override
  State<CricketersDetails> createState() => _CricketersDetailsState();
}

class _CricketersDetailsState extends State<CricketersDetails> {
  int numberOfMatchPlayed = 0;
  @override
  void initState() {
    super.initState();
    numberOfMatchPlayed = 200;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("Cricketer Details"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/virat.png",
                  scale: 2,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "NAME ",
                  style: TextStyle(
                      color: Colors.white60, letterSpacing: 2.5, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Virat Kohli",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "AGE",
                  style: TextStyle(
                      color: Colors.white60, letterSpacing: 2.5, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "35",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "NUMBER OF GAMES PLAYED",
                  style: TextStyle(
                      color: Colors.white60, letterSpacing: 2.5, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "$numberOfMatchPlayed",
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[700],
          onPressed: () {
            setState(() {
              numberOfMatchPlayed++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
