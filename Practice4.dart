void main() {
  // Item 1
  List<String> item1Name = ["Andres, Jose, Emillio"];
  print(item1Name);
  print("\n");

  // Item 2
  List<String> item2Fruits = ["Aple", "Mango", "Orange"];

  for (String fruit in item2Fruits) {
    print(fruit);
  }
  print("\n");

  // Item 4
  List<String> item3Days = [];
  item3Days.addAll([
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ]);

  for (var day in item3Days) {
    print(day);
  }
  print("\n");

  // Item 5
  List<String> items5Friends = [];
  items5Friends.addAll(["Anthony", "Andres", "Junathan", "Bugart"]);

  List<String> startWithA =
      items5Friends.where((element) => element.startsWith("A")).toList();
  print(startWithA);
  print("\n");

  // Item 6
  Map<String, dynamic> item6Information = {
    "Name": "Juan Dela Cruz",
    "Age": 27,
    "Country": "Philippines"
  };

  try {
    item6Information["Country"] = "Sweden";
    print(item6Information);
  } catch (e) {
    print(e);
  }
  print("\n");

  //Item 7
  Map<String, String> item7Information = {
    "Name": "Juan Dela Cruz",
    "Phone": "09123456789"
  };

  List<String> lengthFour = [];

  for (var key in item7Information.keys) {
    if (key.length == 4) {
      lengthFour.add(key);
    }
  }

  print(item7Information);
  if (lengthFour.isEmpty) {
    print("No key that have 4 character lenght.");
  } else {
    print("The Key/s that have 4 character lenght is/are $lengthFour.");
  }
}
