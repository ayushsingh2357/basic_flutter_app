class QuizModel {
  String question;
  List<String> options;
  int answer;
  QuizModel(this.question, this.options, this.answer);
}

QuizModel q1 = QuizModel(
    "Which is the fastest animal?", ["Cheetah", "Zebra", "Peacock", "Lion"], 0);
QuizModel q2 = QuizModel(
    "Who is the King of Jungle?", ["Tiger", "Elephant", "Lion", "Dinosaur"], 2);
QuizModel q3 = QuizModel("Which of the following walk on two legs?",
    ["Cow", "Kangaroo", "Python", "Zebra"], 1);
