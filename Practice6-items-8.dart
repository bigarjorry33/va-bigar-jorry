import 'dart:io';

class questionAndAnswer {
  String? question;
  String? answer;
  List<String>? choices;

  questionAndAnswer(this.question, this.answer, this.choices);
}

class Exam {
  // questionAndAnswer(Question, Answer(Letters Only), choices(List))
  List<questionAndAnswer> exam = [
    questionAndAnswer("What is Function?", "A", [
      "A. Functions are the block of code that performs a specific task",
      "B. The function not helps reusability of the code in the program.",
      "C. None of the above."
    ]),
    questionAndAnswer("Is Dart a Programming Langguage using in Flutter?", "B",
        ["A. True", "B. False", "C. Maybe"]),
    questionAndAnswer(
        "Is Flutter a Frameworks?", "C", ["A. True", "B. False", "C. Maybe"]),
  ];

  int correctAnswer = 0;

  takeExam() {
    // String userAnswer = stdin.readLineSync()!.toUpperCase();
    try {
      for (var element in exam) {
        print(element.question);
        for (String choices in element.choices!) {
          print(choices);
        }
        String? userAnswer = stdin.readLineSync()!.toUpperCase();

        if (userAnswer == element.answer) {
          correctAnswer++;
        }
      }
    } catch (e) {
      print("Something went wrong: $e");
    }
  }

  showScore() {
    print("Thank you for taking this exam. Your Score is: $correctAnswer");
  }
}

void main() {
  Exam exam = Exam();

  exam.takeExam();
  exam.showScore();
}
