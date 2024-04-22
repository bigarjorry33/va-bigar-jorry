// import 'package:practiceapp/practiceapp.dart' as practiceapp;

import 'dart:io';

import 'practices/practice1.dart' as practice1;
import 'practices/practice2.dart' as practice2;
import 'practices/practice3.dart' as practice3;
import 'practices/practice4.dart' as practice4;
import 'practices/practice7.dart' as practice7;
import 'practices/practice8.dart' as practice8;

import 'package:practiceapp/practiceapp.dart' as util;

void main(List<String> arguments) {
  // print('Hello world: ${practiceapp.calculate()}!');

  toDo("========== WELCOME! ========");
}

void toDo(String greetings) {
  int selectedPractice = util.selectPractice(greetings);

  switch (selectedPractice) {
    case 0:
      exit(0);
    case 1:
      practice1.main();
      break;
    case 2:
      practice2.main();
      break;
    case 3:
      practice3.main();
      break;
    case 4:
      practice4.main();
      break;
    case 7:
      practice7.main();
      break;
    case 8:
      practice8.main();
      break;
    default:
      toDo("========== Invalid number of practice ==========");
      break;
  }
}
