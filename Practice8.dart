import 'dart:async';

void main() {
  // Item 1
  print(
      "Item 1: Asynchronous Process is the way of writing codes that allows the program to perform a multiple process at the same time.");
  // Item 2
  print(
      "Item 2: Future syntax is a value or error that is supposed to be available in the future.");
  // Item 3
  getTime().then((value) => print(value));

  // item 5
  getOrder();

  // Item 6
  getSumOfTwoNumbers();

  // Item 7
  int item7Num1 = 21, item7Num2 = 4;
  sumOfTwoInputNumbers(21, 4)
      .then((value) => print("the sum of $item7Num1 and $item7Num2 is $value"));

  //Item 8
  List<String> fruits = ["Banana", "Citrus", "Apple", "Durian"];
  sortList(fruits).then((value) => print("Modified List: $value"));

  // Item 9
  List<int> numberList = [1, 2, 3, 4, 5];
  multiplyList(numberList).then((value) => print("Modified List: $value"));

  // Item 10
  String word = "Hello!";
  reverseString(word)
      .then((value) => print("Reversed String of $word is $value"));
}

// Item 3
Future<String> getTime() async {
  int hours = DateTime.now().hour;
  int mins = DateTime.now().minute;
  int seconds = DateTime.now().second;

  var currentTime = "Current Time:" +
      hours.toString() +
      ":" +
      mins.toString() +
      ":" +
      seconds.toString();

  return Future.delayed(Duration(seconds: 2), () => currentTime);
}

// Item 5
void getOrder() async {
  String order = await customerOrder();
  String size = await orderSize();
  int price = await orderPrice();

  print("Your order is $order and size is $size, with the price of $price.");
}

Future<String> customerOrder() {
  return Future.delayed(Duration(seconds: 1), () => "Matcha Latte");
}

Future<String> orderSize() {
  return Future.delayed(Duration(seconds: 1), () => "Tall");
}

Future<int> orderPrice() {
  return Future.delayed(Duration(seconds: 1), () => 180);
}

// Item 6
void getSumOfTwoNumbers() async {
  int sum = await sumOfTwoNumbers();

  print("The sum is $sum");
}

Future<int> sumOfTwoNumbers() {
  int num1 = 20;
  int num2 = 3;

  return Future.delayed(Duration(seconds: 3), () => num1 + num2);
}

// Item 7
// void getSumOfTwoInputNumbers([int num1 = 2, int num2 = 5]) async {
//   int sum = await sumOfTwoInputNumbers(num1, num2);

//   print("The sum of $num1 and $num2 is $sum");
// }

Future<int> sumOfTwoInputNumbers(int num1, int num2) {
  return Future.delayed(Duration(seconds: 3), () => num1 + num2);
}

// Item 8
Future<List<String>> sortList(List<String> stringList) async {
  await Future.delayed(Duration(seconds: 1));
  stringList.sort();
  return stringList;
}

// Item 9
Future<List<int>> multiplyList(List<int> numberlist) async {
  List<int> modifiedList = [];

  await Future.forEach(numberlist, (int element) async {
    int modifiedElement = await multiplyByTwo(element);
    modifiedList.add(modifiedElement);
  });
  return modifiedList;
}

Future<int> multiplyByTwo(int num) {
  return Future.delayed(Duration(seconds: 1), () => num * 2);
}

// Item 10
Future<String> reverseString(String inputString) async {
  inputString.trim();
  await Future.delayed(Duration(seconds: 1));
  return inputString.split('').reversed.join('');
}
