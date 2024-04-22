import 'package:practiceapp/practice7_util.dart' as practice7_util;

void main() {
  // Item 1
  print("1. What is the purpose of the ? operator in Dart null safety?");
  practice7_util.itemOne();
  print("=======================================================");

  // Item 2
  print(
      "2. Create a late variable named address, assign a US value to it and print it.");
  practice7_util.itemTwo();
  print("=======================================================");

  // Item 3
  print("3. How do you declare a nullable type in Dart null safety?");
  practice7_util.itemThree();
  print("=======================================================");

  // Item 4
  print(
      "4. Write a program in a dart to create an age variable and assign a null value to it using ?.");
  practice7_util.itemFour();
  print("=======================================================");

  // Item 5
  print("""5. Write a function that accepts a nullable int parameter and returns
   0 if the value is null using null coalescing operator ??.""");
  practice7_util.itemFive(null);
  print("=======================================================");

  // Item 6
  print("""6. Write a function named generateRandom() in dart that randomly 
  returns 100 or null. Also, assign a return value of the function to a variable
   named status that can’t be null. Give status a default value of 0, if 
   generateRandom() function returns null.""");
  practice7_util.itemSix();
  print("=======================================================");
}
