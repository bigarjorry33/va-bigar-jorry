void main() {
  var fullName = "Jorry G. Bigar";

  String withSingleQoute = r'''Hello I'am "John doe".(with single quote)''';
  String doubleQuote = r"""Hello I am "John doe".(double quote)""";

  const int number = 7;

  double principleAmount = 1250.98;
  double interestRate = 10.25;
  num timePeriod = 4;

  double interest = (principleAmount * interestRate * timePeriod) / 100;
  var roundedInterest = interest.toStringAsFixed(2);

  //Item 1
  print("$fullName");
  //Item 2
  print("$withSingleQoute");
  print("$doubleQuote");
  //Item 3
  print("Constant int value is $number/n");
  //item 4
  print(
      "Principle Amount: $principleAmount\nInterest Rate: $interestRate\nTime Period: $timePeriod (year)\nTotal Interest: $roundedInterest");
}
