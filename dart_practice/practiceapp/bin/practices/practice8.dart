import 'package:practiceapp/practice8_util.dart' as practice8_util;

void main() {
  // Item 1
  print("1. WExplain what is asynchronous programming in dart?");
  practice8_util.itemOne();
  print("=======================================================");

  // Item 2
  print("2. What is Future in dart?");
  practice8_util.itemTwo();
  print("=======================================================");

  // Item 3
  print(
      "3. Write a program to print current time after 2 seconds using Future.delayed()");
  practice8_util.itemThree().then((value) => print(value));
  print("=======================================================");

  // Item 5
  print("""5. Write a program in dart that uses Future class to perform multiple
   asynchronous operations, wait for all of them to complete, and then print the results.""");
  practice8_util.itemFive();
  print("=======================================================");

  // Item 6
  print(
      "6. Write a Dart program to calculate the sum of two numbers using async/await.");
  practice8_util.itemSix();
  print("=======================================================");

  // Item 7
  print("""7. Write a Dart program that takes in two integers as input,
   waits for 3 seconds, and then prints the sum of the two numbers.""");
  int item7Num1 = 21, item7Num2 = 4;
  practice8_util
      .itemSeven(item7Num1, item7Num2)
      .then((value) => print("the sum of $item7Num1 and $item7Num2 is $value"));
  print("=======================================================");

  // Item 8
  print("""8. Write a Dart program that takes a list of strings as input,
   sorts the list asynchronously, and then prints the sorted list.""");
  List<String> fruits = ["Banana", "Citrus", "Apple", "Durian"];
  practice8_util
      .itemEight(fruits)
      .then((value) => print("Modified List: $value"));
  print("=======================================================");

  // Item 9
  print("""9. Write a Dart program that takes a list of integers as input, 
  multiplies each integer by 2 asynchronously, and then prints the modified list.""");
  List<int> numberList = [1, 2, 3, 4, 5];
  practice8_util
      .itemNine(numberList)
      .then((value) => print("Modified List: $value"));
  print("=======================================================");

  // Item 10
  print("""10. Write a Dart program that takes a string as input, reverses the
   string asynchronously, and then prints the reversed string.""");
  String word = "Hello!";
  practice8_util
      .itemTen(word)
      .then((value) => print("Reversed String of $word is $value"));
  print("=======================================================");
}
