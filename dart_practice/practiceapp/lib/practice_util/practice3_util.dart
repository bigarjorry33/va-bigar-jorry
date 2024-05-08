import 'dart:math';
import 'package:practiceapp/constant/const_main.dart';

void itemOne() {
  print("Bigar, Jorry G.");
}

void itemTwo([int number = 5]) {
  if (number <= 0) {
    print("Number must be greater than 0");
  } else {
    print("The Even numbers of interval $number are:");
    for (int i = 0; i <= number; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }
}

void itemThree([String name = "John"]) {
  print("Hello! $name, have a nice day!");
}

String itemFour(int len) {
  if (len < 5 || len > 10) {
    return "The lenth of the password must greater than 4 but less than 10";
  } else {
    var r = Random();
    return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
  }
}

double itemFive({required double radius}) {
  const pi = 3.14;
  double area = pi * pow(radius, 2);
  return area;
}

String itemSix({required String inputString}) {
  List<String> characters = inputString.split('');

  String reversedString = characters.reversed.join();

  return reversedString;
}

void itemSeven({required int num, required int nthPower}) {
  var power = pow(num, nthPower);
  print(power);
}

double itemEight({required double num1, required double num2}) {
  return num1 + num2;
}

void itemNine({required int num1, required int num2, required int num3}) {
  List<int> numList = [num1, num2, num3];
  int maxNum = numList.reduce(max);

  print("The maximum number is $maxNum");
}

bool itemTen({required int num}) {
  bool isNumberEven = num % 2 == 0 ? true : false;

  return isNumberEven;
}

void itemEleven(String name, int age, [bool isActive = true]) {
  print("Name: $name, Age: $age, isActice: $isActive");
}

double itemTwelve({double lenght = 1, width = 1}) {
  return lenght * width;
}
