// ignore_for_file: file_names
import 'dart:io';

import '../practiceapp.dart';
import '../constant/const_main.dart';

import 'package:practiceapp/extension/ext_string.dart';

void itemOne() {
  print("Hello Jorry G. Bigar!");
}

void itemTwo() {
  print('''Hello I'am "John doe".(with single quote)''');
  print("""Hello I am "John doe".(double quote)""");
}

void itemThree() {
  print("The constant number that was declared is $sampleNumber");
}

void itemFour() {
  double principleAmount = 1250.98;
  double interestRate = 10.25;
  num timePeriod = 4;

  double interest = (principleAmount * interestRate * timePeriod) / 100;
  var roundedInterest = interest.toStringAsFixed(2);

  print("""Principle Amount: $principleAmount
  Interest Rate : $interestRate
  Time Period : $timePeriod
  Total Interest : $roundedInterest""");
}

void itemFive() {
  stdout.write("Enter Number: ");
  String num1 = inputNullValidation();

  bool numeric = num1.isNumeric();

  if (numeric) {
    // num1 = int.parse(num1);
    int parsed = num1.intParsing();
    int square = parsed * parsed;
    print("The square of entered number is $square");
  } else {
    print(invalidNumber);
    itemFive();
  }
}

void itemSix() {
  stdout.write("Enter your Firstname: ");
  String? firstNameRaw = inputNullValidation();
  stdout.write("Enter your Lastname: ");
  String? lastNameRaw = inputNullValidation();

  String firstName = firstNameRaw.capitalize();
  String lastName = lastNameRaw.capitalize();

  print("Your name is $firstName $lastName");
}

void itemSeven() {
  double dividend = 75, divisor = 9;
  double quotient = dividend / divisor;
  int remainder = dividend.round() - (divisor.round() * quotient.round());

  var roundedQuotient = quotient.toStringAsFixed(2);

  print(
      "$dividend divided by $divisor = $roundedQuotient, and the remainder is $remainder");
}

void itemEight() {
  int num1 = 3, num2 = 11, temp;
  print("The original value is $num1 and $num2");
  temp = num1;
  num1 = num2;
  num2 = temp;
  print("After swapping, the value is $num1 and $num2");
}

void itemNine() {
  String text = "   Lo r em  I p sum   ";
  // print('Remove White Space: ${text.replaceAll(RegExp(r"\s+"), "")}');
  print(text.trim());
}

void itemTen() {
  try {
    String value = "10";
    int numericValue = int.parse(value);

    print("The converted value from String to Int is: $numericValue \n");
  } catch (msg) {
    print("$errorHandlingMsg.\n $msg \n");
  }
}

void itemEleven() {
  double totalBill = 10998.20;
  int numberOfPeople = 8;

  double totalSplitAmount = totalBill / numberOfPeople;

  var roundedTotalSplitAmount = totalSplitAmount.toStringAsFixed(2);

  print("""Total Bill: $totalBill
  Number of People: $numberOfPeople
  Total Bill: $roundedTotalSplitAmount""");
}

void itemTwelve() {
  int distance = 25, speed = 40;
  double time = distance / speed;
  double minute = time * 60;

  print("""Distance: $distance km
  Speed: $speed km/hr
  Time in Minute: ${minute.round()} Minutes""");
}
