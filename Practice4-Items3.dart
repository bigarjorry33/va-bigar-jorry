import 'dart:io';

void main() {
  print("===== WELCOME =====");
  print(
      "Please enter how many expenses items that you have. minumum of 1 and maximum of 10 items.");
  int expensesCount = int.parse(stdin.readLineSync()!);

  // Validation if the input number is valid.
  while (expensesCount < 1 || expensesCount > 10) {
    print("The Number is not valid. minimum of 1 and maximum of 10");
    print("Pleas input a valid number.");
    expensesCount = int.parse(stdin.readLineSync()!);
  }
  List<double> expensesList = [];

  double sum = 0;

  // repeatable input of data based on the number of data that the user wants.
  print("Now, type your expenses amount to get your total expenses.");
  for (var i = 0; i < expensesCount; i++) {
    double expenses = double.parse(stdin.readLineSync()!);
    expensesList.add(expenses);
  }

  //Get the sum of input data.
  for (double expense in expensesList) {
    sum += expense;
  }
  print("Your total expenses is $sum");
}
