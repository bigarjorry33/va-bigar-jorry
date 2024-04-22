import 'dart:math';

late String address;

void itemOne() {
  print(
      """item 1: The purpose of ? in Dart null safety is indicator that you will
       use the variable and to prevent the null error.""");
}

void itemTwo() {
  address = "US";
  print("Address: $address");
}

void itemThree() {
  print("""item 3: You can declare a nullable type by using ? operator after the
       type declaration.(e.g String ? firstName)""");
}

void itemFour() {
  int? age;
  age = null;
  print(age);
}

void itemFive(int? num) {
  print("The value of number is ${num ?? 0}");
}

void itemSix() {
  List<int?> nullOr100 = [null, 100];
  var r = Random();
  int status = nullOr100[r.nextInt(nullOr100.length)] ?? 0;

  print(status);
}
