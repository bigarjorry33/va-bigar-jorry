void main() {
  //Item 7
  double dividend = 75, divisor = 9;
  double quotient = dividend / divisor;
  int remainder = dividend.round() - (divisor.round() * quotient.round());

  var roundedQuotient = quotient.toStringAsFixed(2);

  print(
      "$dividend divided by $divisor = $roundedQuotient, and the remainder is $remainder \n");

  //Item 8
  int num1 = 3, num2 = 11, temp;
  print("The original value is $num1 and $num2");
  temp = num1;
  num1 = num2;
  num2 = temp;
  print("After swapping, the value is $num1 and $num2 \n");

  //Item 9
  String text = "Lorem  Ipsum";
  print(
      'Remove White Space: ${text.replaceAll(new RegExp(r"\s+\b|\b\s"), "")} \n');

  //Item 10
  try {
    String value = "10";
    int numericValue = int.parse(value);

    print("The converted value from String to Int is: ${numericValue} \n");
  } catch (msg) {
    print("Something went wrong on converting string to int.\n $msg \n");
  }

  //Item 11
  double totalBill = 10998.20;
  int numberOfPeople = 8;

  double totalSplitAmount = totalBill / numberOfPeople;

  var roundedTotalSplitAmount = totalSplitAmount.toStringAsFixed(2);

  print(
      "Total Bill: $totalBill\nNumber of People: $numberOfPeople\nTotal Bill: $roundedTotalSplitAmount \n");

  //Item 12
  int distance = 25, speed = 40;
  double time = distance / speed;
  double minute = time * 60;

  print(
      "Distance: $distance km\nSpeed: $speed km/hr\nTime in Minute: ${minute.round()} Minutes");
}
