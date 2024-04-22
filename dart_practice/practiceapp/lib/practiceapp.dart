import 'dart:io';

int selectPractice(String greetings) {
  Map<int, String> practiceList = {
    1: "Practice 1",
    2: "Practice 2",
    3: "Practice 4",
    4: "Practice 5",
    7: "Practice 7",
    8: "Practice 8",
    0: "EXIT"
  };

  print(greetings);
  print("Please select a practice by typing its practice number....");

  for (MapEntry practiceList in practiceList.entries) {
    print("${practiceList.key}. ${practiceList.value}");
  }

  int? selectedPractice = int.parse(stdin.readLineSync()!);

  return selectedPractice;
}
