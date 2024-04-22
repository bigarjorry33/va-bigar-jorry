import 'dart:async';

void itemOne() {
  print("""Item 1: Asynchronous Process is the way of writing codes that allows
       the program to perform a multiple process at the same time.""");
}

void itemTwo() {
  print(
      "Item 2: Future syntax is a value or error that is supposed to be available in the future.");
}

Future<String> itemThree() async {
  int hours = DateTime.now().hour;
  int mins = DateTime.now().minute;
  int seconds = DateTime.now().second;

  var currentTime = "Current Time:$hours:$mins:$seconds";

  return Future.delayed(Duration(seconds: 2), () => currentTime);
}

void itemFive() async {
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
// ----------------- //

void itemSix() async {
  int sum = await sumOfTwoNumbers();

  print("The sum is $sum");
}

Future<int> sumOfTwoNumbers() {
  int num1 = 20;
  int num2 = 3;

  return Future.delayed(Duration(seconds: 3), () => num1 + num2);
}

Future<int> itemSeven(int num1, int num2) {
  return Future.delayed(Duration(seconds: 3), () => num1 + num2);
}

Future<List<String>> itemEight(List<String> stringList) async {
  await Future.delayed(Duration(seconds: 1));
  stringList.sort();
  return stringList;
}

Future<List<int>> itemNine(List<int> numberlist) async {
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

Future<String> itemTen(String inputString) async {
  inputString.trim();
  await Future.delayed(
      Duration(seconds: 1), () => inputString.split('').reversed.join(''));
  // return inputString.split('').reversed.join('');
  return inputString;
}
