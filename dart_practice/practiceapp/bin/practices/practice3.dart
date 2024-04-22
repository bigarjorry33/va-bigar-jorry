import 'package:practiceapp/practice3_util.dart' as practice3_util;

void main() {
  // Item 1
  print("1. Write a program in Dart to print your own name using function.");
  practice3_util.itemOne();
  print("=======================================================");

  // Item 2
  print(
      "2. Write a program in Dart to print even numbers between intervals using function.");
  practice3_util.itemTwo(10);
  print("=======================================================");

  // Item 3
  print(
      "3. Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.");
  practice3_util.itemThree("Jorry");
  print("=======================================================");

  // Item 4
  print("4. Write a program in Dart that generates random password.");
  String generatePassword = practice3_util.itemFour(5);
  print("The random generated password is $generatePassword");
  print("=======================================================");

  // Item 5
  print(
      "5. Write a program in Dart that find the area of a circle using function. Formula: pi * r * r");
  double radius = 5;
  double area = practice3_util.itemFive(radius: radius);
  print("The area of the Circle with the radius of $radius is $area");
  print("=======================================================");

  // Item 6
  print("6. Write a program in Dart to reverse a String using function.");
  String original = "Hello World!";
  String reversed = practice3_util.itemSix(inputString: original);
  print("The reversed string of $original is $reversed");
  print("=======================================================");

  // Item 7
  print(
      "7. Write a program in Dart to calculate power of a certain number. For e.g 5^3=125");
  practice3_util.itemSeven(num: 5, nthPower: 2);
  print("=======================================================");

  // Item 8
  print(
      "8. Write a function in Dart named add that takes two numbers as arguments and returns their sum.");
  double item8Num1 = 10.5;
  double item8Num2 = 25.5;
  double addTwoNumbers =
      practice3_util.itemEight(num1: item8Num1, num2: item8Num2);

  print("$item8Num1 + $item8Num2 = $addTwoNumbers");
  print("=======================================================");

  // Item 9
  print(
      "9. Write a program in Dart to print even numbers between intervals using function.");
  practice3_util.itemNine(num1: 10, num2: 3, num3: 9);
  print("=======================================================");

  // Item 10
  print(
      "10. Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.");
  int item10Num = 4;
  bool numIsEven = practice3_util.itemTen(num: item10Num);

  print("The number $item10Num is Even? $numIsEven");
  print("=======================================================");

  // Item 11
  print(
      "11. Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.");
  practice3_util.itemEleven("Jorry", 26);
  print("=======================================================");

  // Item 12
  print(
      "12. Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width");
  double length = 12;
  double width = 2;
  double item12Area = practice3_util.itemTwelve(lenght: length, width: width);

  print(
      "The area of a rectangle with the length of $length and width of $width is $item12Area");
  print("=======================================================");
}
