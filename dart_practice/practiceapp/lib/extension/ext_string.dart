extension StringExtension on String {
  String capitalize() =>
      "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

  bool isNumeric() => int.tryParse(this) != null;

  int intParsing() => int.parse(this);

  double doubleParsing() => double.parse(this);
}
