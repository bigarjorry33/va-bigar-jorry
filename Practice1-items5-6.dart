import 'dart:io';

void main() {
  //Item 5
  print("Enter Number: ");
  int? num1 = int.parse(stdin.readLineSync()!);
  int square = num1 * num1;
  print("The square of entered number is $square");

  //Item 6
  print("Enter your Firstname: ");
  String? firstNameRaw = stdin.readLineSync()!;
  print("Enter your Lastname: ");
  String? lastNameRaw = stdin.readLineSync()!;

  String firstName = firstNameRaw.capitalize();
  String lastName = lastNameRaw.capitalize();

  print("Your name is $firstName $lastName");
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
