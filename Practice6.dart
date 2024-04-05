void main() {
  //Item 1;
  Laptop laptop = Laptop();
  laptop.id = 123;
  laptop.name = "Lenovo";
  laptop.ram = "8 GB";
  laptop.showDetails();

  Laptop laptop2 = Laptop();
  laptop2.id = 124;
  laptop2.name = "HP";
  laptop2.ram = "16 GB";
  laptop2.showDetails();

  Laptop laptop3 = Laptop();
  laptop3.id = 125;
  laptop3.name = "ThinkPad";
  laptop3.ram = "16 GB";
  laptop3.showDetails();

  // Item 2
  House house = House(3, "Maya", 2500000);
  House house2 = House(4, "Kasara", 5000000);
  House house3 = House(5, "Mina", 8000000);

  List<House> houses = [house, house2, house3];

  for (var home in houses) {
    print(
        "House ${home.id} named ${home.name} with the price of ${home.price}");
  }

  // Item 3
  var genders = Gender.values;

  for (var gender in genders) {
    print(gender.name);
  }

  // Item 4
  var animal = Cat();

  animal.id = 33;
  animal.name = "Bugart";
  animal.color = "Black White";
  animal.sounds = "Meow Meow";

  animal.showAnimalDetails();
  animal.showCatDetails();

  // Item 5
  Camera camera = new Camera();
  camera.brand = "Canon";
  camera.color = "Black";
  camera.id = 3;
  camera.price = 45000;
  print(
      "Camera ${camera.showId} with the brand of ${camera.showBrand}, color ${camera.showColor}, and the price of ${camera._price}");

  Camera camera2 = new Camera();
  camera2.brand = "Nikon";
  camera2.color = "White";
  camera2.id = 4;
  camera2.price = 60000;
  print(
      "Camera ${camera2.showId} with the brand of ${camera2.showBrand}, color ${camera2.showColor}, and the price of ${camera2._price}");

  Camera camera3 = new Camera();
  camera3.brand = "Sony";
  camera3.color = "Gray";
  camera3.id = 5;
  camera3.price = 80000;
  print(
      "Camera ${camera3.showId} with the brand of ${camera3.showBrand}, color ${camera3.showColor}, and the price of ${camera3._price}");

  // Item 6
  Bottle bottle = Bottle();

  bottle.open();
}

// Item 1
class Laptop {
  int? id;
  String? name;
  String? ram;

  void showDetails() {
    print("Laptop Id: $id");
    print("Laptop Name: $name");
    print("Laptop Ram: $ram");
  }
}

// Item 2
class House {
  int id;
  String? name;
  double? price;

  House(this.id, this.name, this.price);
}

// Item 3
enum Gender {
  Male,
  Female,
  Others,
}

// Item 4

class Animal {
  int? id;
  String? name;
  String? color;

  void showAnimalDetails() {
    print("Animal Id: $id");
    print("Animal Name: $name");
    print("Animal Color: $color");
  }
}

class Cat extends Animal {
  String? sounds;

  void showCatDetails() {
    print("Animal Sounds: $sounds");
  }
}

// Item 5
class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  String get showBrand => this._brand!;
  String get showColor => this._color!;
  int get showId => this._id!;
  double get showPrice => this._price!;

  set brand(String brand) => this._brand = brand;
  set color(String color) => this._color = color;
  set id(int id) => this._id = id;
  set price(double price) => this._price = price;
}

// Item 6
abstract class Bottle {
  factory Bottle() {
    return CokeBottle();
  }

  void open();
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened.");
  }
}
