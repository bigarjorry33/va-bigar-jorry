import 'dart:async';
import 'dart:io';
// import 'Function/function_help.dart';
import 'constant/const_main.dart';

import 'practices/practice1.dart' as practice1;
import 'practices/practice2.dart' as practice2;
import 'practices/practice3.dart' as practice3;
import 'practices/practice4.dart' as practice4;
import 'practices/practice7.dart' as practice7;
import 'practices/practice8.dart' as practice8;

import 'package:practiceapp/extension/ext_string.dart';

String inputNullValidation() {
  String userInput = stdin.readLineSync()!.trim();

  while (userInput.isEmpty) {
    print(nullInputMsg);
    userInput = stdin.readLineSync()!;
  }

  return userInput;
}

String selectPractice(String greetings) {
  print(greetings);
  print(practiceSelectionMsg);

  for (MapEntry practiceList in practiceList.entries) {
    print("${practiceList.key}. ${practiceList.value}");
  }

  String selectedPractice = inputNullValidation();
  // int parsed = intParsing(str: selectedPractice);

  return selectedPractice;
}

void showPractices(String greetings) {
  String selectedPractice = selectPractice(greetings);

  bool numeric = selectedPractice.isNumeric();

  if (numeric) {
    int parsed = selectedPractice.intParsing();

    switch (parsed) {
      case 0:
        exit(0);
      case 1:
        practice1.main();
        continuePractice();
        break;
      case 2:
        practice2.main();
        continuePractice();
        break;
      case 3:
        practice3.main();
        continuePractice();
        break;
      case 4:
        practice4.main();
        continuePractice();
        break;
      case 7:
        practice7.main();
        continuePractice();
        break;
      case 8:
        practice8.main();
        runContinuePractice();
        // runAsyncFunctions();
        break;
      default:
        showPractices(invalidPracticeNumber);
        break;
    }
  } else {
    showPractices(invalidPracticeNumber);
  }
}

void continuePractice() {
  print(runAnotherPracticeMsg);

  String isContinue = inputNullValidation().toUpperCase();

  while (!yesOrNoInput.contains(isContinue)) {
    print(invalidInputYesOrNoMsg);
    isContinue = stdin.readLineSync()!.toUpperCase();
  }

  if (isContinue == "Y") {
    showPractices(welcomeMsg);
  } else {
    exit(0);
  }
}

// Future<void> runAsyncFunctions() async {
//   // Start both functions concurrently
//   await Future.wait([
//     practice8.main(),
//     runContinuePractice(),
//   ]);
// }

Future<void> runContinuePractice() async {
  await Future.delayed(Duration(seconds: 4), () => continuePractice());
  // return Future.sync(continuePractice);
}
