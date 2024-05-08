import 'package:practiceapp/practice_util/practice1_util.dart'
    as practice1_util;
import 'package:practiceapp/practice_util/practice2_util.dart'
    as practice2_util;
import 'package:practiceapp/practice_util/practice3_util.dart'
    as practice3_util;
import 'package:practiceapp/practice_util/practice4_util.dart'
    as practice4_util;
import 'package:practiceapp/practice_util/practice7_util.dart'
    as practice7_util;
import 'package:practiceapp/practice_util/practice8_util.dart'
    as practice8_util;

import 'package:practiceapp/constant/const_main.dart';

String errorMsg = "===== $errorHandlingMsg: Invalid Item number. =====";

void showPraticeOne({required item}) {
  switch (item) {
    case 1:
      practice1_util.itemOne();
      break;
    case 2:
      practice1_util.itemTwo();
      break;
    case 3:
      practice1_util.itemThree();
      break;
    case 4:
      practice1_util.itemFour();
      break;
    case 5:
      practice1_util.itemFive();
      break;
    case 6:
      practice1_util.itemSix();
      break;
    case 7:
      practice1_util.itemSeven();
      break;
    case 8:
      practice1_util.itemEight();
      break;
    case 9:
      practice1_util.itemNine();
      break;
    case 10:
      practice1_util.itemTen();
      break;
    case 11:
      practice1_util.itemEleven();
      break;
    case 12:
      practice1_util.itemTwelve();
      break;
    default:
      print(errorMsg);
      break;
  }
}

void showPracticeTwo({required item}) {
  switch (item) {
    case 1:
      practice2_util.itemOne();
      break;
    case 2:
      practice2_util.itemTwo();
      break;
    case 3:
      practice2_util.itemThree();
      break;
    case 4:
      practice2_util.itemFour();
      break;
    case 5:
      practice2_util.itemFive();
      break;
    case 6:
      practice2_util.itemSix();
      break;
    case 7:
      practice2_util.itemSeven();
      break;
    case 8:
      practice2_util.itemEight();
      break;
    case 9:
      practice2_util.itemNine();
      break;
    default:
      print(errorMsg);
      break;
  }
}

void showPracticeThree({required item}) {
  switch (item) {
    case 1:
      practice3_util.itemOne();
      break;
    case 2:
      practice3_util.itemTwo(10);
      break;
    case 3:
      practice3_util.itemThree("Jorry");
      break;
    case 4:
      String generatePassword = practice3_util.itemFour(5);
      print("The random generated password is $generatePassword");
      break;
    case 5:
      double radius = 5;
      double area = practice3_util.itemFive(radius: radius);
      print("The area of the Circle with the radius of $radius is $area");
      break;
    case 6:
      String original = "Hello World!";
      String reversed = practice3_util.itemSix(inputString: original);
      print("The reversed string of $original is $reversed");
      break;
    case 7:
      practice3_util.itemSeven(num: 5, nthPower: 2);
      break;
    case 8:
      double item8Num1 = 10.5;
      double item8Num2 = 25.5;
      double addTwoNumbers =
          practice3_util.itemEight(num1: item8Num1, num2: item8Num2);

      print("$item8Num1 + $item8Num2 = $addTwoNumbers");
      break;
    case 9:
      practice3_util.itemNine(num1: 10, num2: 3, num3: 9);
      break;
    case 10:
      int item10Num = 4;
      bool numIsEven = practice3_util.itemTen(num: item10Num);
      print("The number $item10Num is Even? $numIsEven");
      break;
    case 11:
      practice3_util.itemEleven("Jorry", 26);
      break;
    case 12:
      double length = 12;
      double width = 2;
      double item12Area =
          practice3_util.itemTwelve(lenght: length, width: width);

      print(
          "The area of a rectangle with the length of $length and width of $width is $item12Area");
      break;
    default:
      print(errorMsg);
      break;
  }
}

void showPracticeFour({required item}) {
  switch (item) {
    case 1:
      practice4_util.itemOne();
      break;
    case 2:
      practice4_util.itemTwo();
      break;
    case 3:
      practice4_util.itemThree(welcomeMsg);
      break;
    case 4:
      practice4_util.itemFive();
      break;
    case 5:
      practice4_util.itemFive();
      break;
    case 6:
      practice4_util.itemSix();
      break;
    case 7:
      practice4_util.itemSeven();
      break;
    case 8:
      practice4_util.itemEight();
      break;
    default:
      print(errorMsg);
      break;
  }
}

void showPracticeSeven({required item}) {
  switch (item) {
    case 1:
      practice7_util.itemOne();
      break;
    case 2:
      practice7_util.itemTwo();
      break;
    case 3:
      practice7_util.itemThree();
      break;
    case 4:
      practice7_util.itemFour();
      break;
    case 5:
      practice7_util.itemFive(7);
      break;
    case 6:
      practice7_util.itemSix();
      break;
    default:
      print(errorMsg);
      break;
  }
}

void showPracticeEight({required item}) {
  switch (item) {
    case 1:
      practice8_util.itemOne();
      break;
    case 2:
      practice8_util.itemTwo();
      break;
    case 3:
      practice8_util.itemThree().then((value) => print(value));
      break;
    case 5:
      practice8_util.itemFive();
      break;
    case 6:
      practice7_util.itemSix();
      break;
    case 7:
      int item7Num1 = 21, item7Num2 = 4;
      practice8_util.itemSeven(item7Num1, item7Num2).then(
          (value) => print("the sum of $item7Num1 and $item7Num2 is $value"));
      break;
    case 8:
      List<String> fruits = ["Banana", "Citrus", "Apple", "Durian"];
      practice8_util
          .itemEight(fruits)
          .then((value) => print("Modified List: $value"));
      break;
    case 9:
      List<int> numberList = [1, 2, 3, 4, 5];
      practice8_util
          .itemNine(numberList)
          .then((value) => print("Modified List: $value"));
      break;
    case 10:
      String word = "Hello!";
      practice8_util
          .itemTen(word)
          .then((value) => print("Reversed String of $word is $value"));
      break;
    default:
      print(errorMsg);
      break;
  }
}
