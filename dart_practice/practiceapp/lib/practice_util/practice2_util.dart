void itemOne() {
  int item1Num = 10;

  String oddEvenIndicator = item1Num % 2 == 0
      ? "The number $item1Num is Even."
      : "The number $item1Num is Odd.";

  print(oddEvenIndicator);
}

void itemTwo() {
  String charactersOrWord = "JOrry";
  charactersOrWord.toLowerCase();
  List<String> vowelLetters = ['a', 'e', 'i', 'o', 'u'];

  for (var character in charactersOrWord.runes) {
    String indicator = vowelLetters.contains(String.fromCharCode(character))
        ? "Vowel"
        : "Consonant";

    print("${String.fromCharCode(character)} is $indicator letter");
  }
}

void itemThree() {
  int item3Num = 25;

  switch (item3Num) {
    case < 0:
      print("The number $item3Num is Negative (-)");
      break;
    case == 0:
      print("The number $item3Num is Zero (0)");
      break;
    case > 0:
      print("The number $item3Num is Positive (+)");
      break;
    default:
      print("Unidentified number $item3Num");
      break;
  }
}

void itemFour() {
  String item4MyName = "Bigar, Jorry G.";

  for (int i = 1; i <= 5; i++) {
    print("$item4MyName $i");
  }
}

void itemFive() {
  int item5Sum = 0, naturalNumber = 10;

  if (naturalNumber <= 0) {
    print("The natural number must not be 0 or negative.");
  } else {
    for (int i = 1; i <= naturalNumber; i++) {
      item5Sum += i;
    }

    print("The sum of natural number $naturalNumber is $item5Sum");
  }
}

void itemSix() {
  int item6num = 5;
  int item6Product = 0;

  for (int i = 0; i <= 10; i++) {
    item6Product = item6num * i;
    print("$item6num x $i = $item6Product");
  }
}

void itemSeven() {
  int item7Num = 2;
  int item7Product = 0;

  for (int i = 0; i <= item7Num; i++) {
    print("Table $i");
    for (int j = 0; j <= 10; j++) {
      item7Product = i * j;
      print("$i x $j = $item7Product");
    }
  }
}

void itemEight() {
  double item8num1 = 25, item8num2 = 5;

  double item8Sum = item8num1 + item8num2;
  double item8Difference = item8num1 - item8num2;
  double item8Product = item8num1 * item8num2;
  double item8Quotient = item8num1 / item8num2;

  print("$item8num1 + $item8num2 = $item8Sum");
  print("$item8num1 - $item8num2 = $item8Difference");
  print("$item8num1 * $item8num2 = $item8Product");
  print("$item8num1 / $item8num2 = $item8Quotient");
}

void itemNine() {
  for (int i = 0; i <= 100; i++) {
    if (i == 41) {
      continue;
    }
    print(i);
  }
}
