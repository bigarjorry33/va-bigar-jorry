import 'dart:math';

// item 2

late String address;
void main() {
  // Item 1
  print(
      "item 1: The purpose of ? in Dart null safety is indicator that you will use the variable and to prevent the null error.");

  // item 2

  address = "US";
  print("Address: $address");

  // Item 3
  print(
      "item 3: You can declare a nullable type by using ? operator after the type declaration.(e.g String ? firstName)");

  // Item 4

  int? age;
  age = null;
  print(age);

  //Item 5
  printInt(null);

  // Item 6
  generateRandom();
}

// Item 5
void printInt(int? num) {
  print("The value of number is ${num ?? 0}");
}

// Item 6
void generateRandom() {
  List<int?> nullOr100 = [null, 100];
  var r = Random();
  int status = nullOr100[r.nextInt(nullOr100.length)] ?? 0;

  print(status);
}
