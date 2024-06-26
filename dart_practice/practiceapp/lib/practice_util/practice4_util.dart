import 'dart:io';
import 'package:practiceapp/constant/const_main.dart';
import 'package:practiceapp/extension/ext_string.dart';
import 'package:practiceapp/practiceapp.dart';

void itemOne() {
  List<String> item1Name = ["Andres, Jose, Emillio"];
  print(item1Name);
}

void itemTwo() {
  List<String> item2Fruits = ["Apple", "Mango", "Orange"];

  for (String fruit in item2Fruits) {
    print(fruit);
  }
}

void itemThree(String greetings) {
  print(greetings);
  print(
      "Please enter how many expenses items that you have. minumum of 1 and maximum of 10 items.");
  String expensesCount = inputNullValidation();

  bool numeric = expensesCount.isNumeric();

  if (numeric) {
    int parsed = expensesCount.intParsing();

    while (parsed < 1 || parsed > 10) {
      print("The Number is not valid. minimum of 1 and maximum of 10");
      print("Pleas input a valid number.");
      expensesCount = inputNullValidation();
    }
    List<double> expensesList = [];

    double sum = 0;

    // repeatable input of data based on the number of data that the user wants.
    print("Now, type your expenses amount to get your total expenses.");
    for (var i = 0; i < parsed; i++) {
      String expenses = inputNullValidation();

      bool numeric = expenses.isNumeric();

      while (!numeric) {
        print(invalidNumber);
        expenses = inputNullValidation();
        numeric = expenses.isNumeric();
      }

      double parsed = expenses.doubleParsing();

      expensesList.add(parsed);
    }

    //Get the sum of input data.
    for (double expense in expensesList) {
      sum += expense;
    }
    print("Your total expenses is $sum");
  } else {
    itemThree(invalidNumber);
  }

  // Validation if the input number is valid.
}

void itemFour() {
  List<String> item3Days = [];
  // item3Days.addAll([
  //   "Sunday",
  //   "Monday",
  //   "Tuesday",
  //   "Wednesday",
  //   "Thursday",
  //   "Friday",
  //   "Saturday"
  // ]);
  item3Days.add("Sunday");
  item3Days.add("Monday");
  item3Days.add("Tuesday");
  item3Days.add("Wednesday");
  item3Days.add("Thursday");
  item3Days.add("Friday");
  item3Days.add("Saturday");

  for (var day in item3Days) {
    print(day);
  }
}

void itemFive() {
  List<String> items5Friends = [];
  items5Friends.addAll(["Anthony", "Andres", "Junathan", "Bugart"]);

  List<String> startWithA =
      items5Friends.where((element) => element.startsWith("A")).toList();
  print(startWithA);
}

void itemSix() {
  Map<String, dynamic> item6Information = {
    "Name": "Juan Dela Cruz",
    "Age": 27,
    "Country": "Philippines"
  };

  try {
    item6Information["Country"] = "Sweden";
    print(item6Information);
  } catch (e) {
    print(e);
  }
}

void itemSeven() {
  Map<String, String> item7Information = {
    "Name": "Juan Dela Cruz",
    "Phone": "09123456789"
  };

  List<String> lengthFour = [];

  for (var key in item7Information.keys) {
    if (key.length == 4) {
      lengthFour.add(key);
    }
  }

  print(item7Information);
  if (lengthFour.isEmpty) {
    print("No key that have 4 character lenght.");
  } else {
    print("The Key/s that have 4 character lenght is/are $lengthFour.");
  }
}

void itemEight() {
  List<String> toDoList = [
    "Fix bed",
    "Toothbrush",
    "Prepare breakfast",
    "Take a bath",
    "Test Data"
  ];
  print("===== WELCOME =====");
  print(
      "Please type R if you want to remove task on the List, A to add task on the List, V to view your List.");

  String indicator = stdin.readLineSync()!.toUpperCase();

  //Validation if the input data is valid
  while (!indicatorList.contains(indicator)) {
    stdout.write("Error $indicatorList is valid.");
    indicator = stdin.readLineSync()!.toUpperCase();
  }

  switch (indicator) {
    // View
    case "V":
      showList(toDoList);
      break;
    // REMOVE
    case "R":
      showList(toDoList);

      print("Please type the number of task that you want to remove.");
      // int indexOfElement = int.parse(stdin.readLineSync()!) - 1;

      String indexOfElement = inputNullValidation();

      bool numeric = indexOfElement.isNumeric();

      while (!numeric) {
        print(invalidNumber);
        indexOfElement = inputNullValidation();
        numeric = indexOfElement.isNumeric();
      }

      int parsed = indexOfElement.intParsing() - 1;

      while (parsed < 1 || parsed > toDoList.length - 1) {
        print("Invalid number of task.");
        indexOfElement = inputNullValidation();
        parsed = indexOfElement.intParsing() - 1;
      }

      print("The '${toDoList[parsed]}' was removed from the List");

      toDoList.removeAt(parsed);

      showList(toDoList);
      break;

    // ADD
    case "A":
      print("Please input your new task.");

      String newTask = stdin.readLineSync()!.trim();

      toDoList.add(newTask);

      print("'$newTask' was added on the List");

      showList(toDoList);

      break;

    case "EXIT":
      exit(0);
    default:
      print("Something went wrong");
      break;
  }
}

void showList(List<String> listOfData) {
  for (String element in listOfData) {
    print("${listOfData.indexOf(element) + 1}. $element");
  }
}
