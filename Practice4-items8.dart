import 'dart:io';

void main() {
  List<String> toDoList = [
    "Fix bed",
    "Toothbrush",
    "Prepare breakfast",
    "Take a bath",
    "Test Data"
  ];
  print("===== WELCOME =====");
  print(
      "Please type R if you want to remove task on the List, A to ass add on the List, V to view your List.");

  List<String> indicatorList = ["R", "A", "V", "EXIT"];
  String indicator = stdin.readLineSync()!.toUpperCase();

  //Validation if the input data is valid
  while (!indicatorList.contains(indicator)) {
    print("Error $indicatorList is valid.");
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
      int indexOfElement = int.parse(stdin.readLineSync()!) - 1;

      while (indexOfElement < 1 || indexOfElement > toDoList.length - 1) {
        print("Invalid number of task.");
        indexOfElement = int.parse(stdin.readLineSync()!) - 1;
      }

      print("The '${toDoList[indexOfElement]}' was removed from the List");

      toDoList.removeAt(indexOfElement);

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
