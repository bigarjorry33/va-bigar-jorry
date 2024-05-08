import 'package:practiceapp/constant/const_question.dart';
import 'package:practiceapp/constant/const_main.dart';

import 'package:practiceapp/show_practice_item/function_show_practice_item.dart';

class QuestionAndAnswer {
  int? practice;
  int? item;

  QuestionAndAnswer(int this.practice, int this.item);

  void displayQuestion() {
    // int item;
    String? questionToShow;

    switch (practice) {
      case 1:
        questionToShow = "$item. ${practiceOneQuestion[item]}";
        break;
      case 2:
        questionToShow = "$item. ${practiceTwoQuestion[item]}";
        break;
      case 3:
        questionToShow = "$item. ${practiceThreeQuestion[item]}";
        break;
      case 4:
        questionToShow = "$item. ${practiceFourQuestion[item]}";
        break;
      case 7:
        questionToShow = "$item. ${practiceSevenQuestion[item]}";
        break;
      case 8:
        questionToShow = "$item. ${practiceEightQuestion[item]}";
        break;
      default:
        print(errorHandlingMsg);
        break;
    }
    print(questionToShow);
  }

  void dispalyAnswer() {
    switch (practice) {
      case 1:
        showPraticeOne(item: item);
        break;
      case 2:
        showPracticeTwo(item: item);
        break;
      case 3:
        showPracticeThree(item: item);
        break;
      case 4:
        showPracticeFour(item: item);
        break;
      case 7:
        showPracticeSeven(item: item);
        break;
      case 8:
        showPracticeEight(item: item);
        break;
    }
  }

  void displayQuestionAndAnswer() {
    displayQuestion();
    dispalyAnswer();
    print(separator);
  }
}
