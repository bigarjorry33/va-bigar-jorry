import 'dart:math';

void main() {
  // Item 1
  printName();
  print("\n");

  // Item 2
  showEvenNumbers(10);
  print("\n");

  // Item 3;
  greet("Jorry");
  print("\n");

  //Item 4
  String generatePassword = generateRandomString(5);
  print(generatePassword);
  print("\n");

  //Item 5
  double radius = 5;
  double area = AreaOfTheCircle(radius: radius);
  print("The area of the Circle with the radius of $radius is $area");
  print("\n");

  // Item 6
  String original = "Hello World!";
  String reversed = reversedString(inputString: original);
  print("The reversed string of $original is $reversed");
  print("\n");

  // Item 7
  numberPower(num: 5, nthPower: 2);
  print("\n");

  //Item 8
  double item8Num1 = 10.5;
  double item8Num2 = 25.5;
  double addTwoNumbers = add(num1: item8Num1, num2: item8Num2);

  print("$item8Num1 + $item8Num2 = $addTwoNumbers");
  print("\n");

  // Item 9
  maxNumber(num1: 10, num2: 3, num3: 9);
  print("\n");

  // Item 10
  int item10Num = 4;
  bool numIsEven = isEven(num: item10Num);

  print("The number $item10Num is Even? $numIsEven");
  print("\n");

  //Item 11
  createUser("Jorry", 26);
  print("\n");

  //Item 12
  double length = 12;
  double width = 2;
  double Item12Area = calculateArea(lenght: length, width: width);

  print(
      "The area of a rectangle with the length of $length and width of $width is $Item12Area");
}

// Item 1
void printName() {
  print("Bigar, Jorry G.");
}

// Item 2
void showEvenNumbers([int number = 5]) {
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

//Item 3
void greet([String name = "John"]) {
  print("Hello! $name, have a nice day!");
}

//Item 4
String generateRandomString(int len) {
  if (len < 5 || len > 10) {
    return "The lenth of the password must greater than 4 but less than 10";
  } else {
    var r = Random();
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
  }
}

// Item 5
double AreaOfTheCircle({required double radius}) {
  const pi = 3.14;
  double area = pi * pow(radius, 2);
  return area;
}

// Item 6
String reversedString({required String inputString}) {
  List<String> characters = inputString.split('');

  String reversedString = characters.reversed.join();

  return reversedString;
}

// Item 7
void numberPower({required int num, required int nthPower}) {
  var power = pow(num, nthPower);
  print(power);
}

//Item 8
double add({required double num1, required double num2}) {
  return num1 + num2;
}

//Item 9
void maxNumber({required int num1, required int num2, required int num3}) {
  List<int> numList = [num1, num2, num3];
  int maxNum = numList.reduce(max);

  print("The maximum number is $maxNum");
}

//Item 10
bool isEven({required int num}) {
  bool isNumberEven = num % 2 == 0 ? true : false;

  return isNumberEven;
}

//Item 11
void createUser(String name, int age, [bool isActive = true]) {
  print("Name: $name, Age: $age, isActice: $isActive");
}

//Item 12
double calculateArea({double lenght = 1, width = 1}) {
  return lenght * width;
}
