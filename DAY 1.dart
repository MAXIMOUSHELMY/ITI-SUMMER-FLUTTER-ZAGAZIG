void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
  task6();
  task7();
  task8();
  task9();
  task10();
}

void task1() {
  String name = "max";
  int age = 20;
  double height = 1.76;
  String city = "husinia";
  String hobby = "Reading";
  print("My name is $name, I am $age years old, $height meters tall, I live in $city, and I enjoy $hobby.");
}

void task2() {
  double length = 5.0;
  double width = 3.0;
  double perimeter = 2 * (length + width);
  print("Perimeter: $perimeter");
}

void task3() {
  double celsius = 25.0;
  double fahrenheit = celsius * 9 / 5 + 32;
  print("Temperature in Fahrenheit: $fahrenheit");
}

void task4() {
  String fullName = "maximus helmy";
  print(fullName.toUpperCase());
  print(fullName.toLowerCase());
  print("Number of characters: ${fullName.length}");
}

void task5() {
  List<String> fruits = ["Apple", "Banana", "Orange", "Mango", "Grapes"];
  print("First fruit: ${fruits.first}");
  print("Last fruit: ${fruits.last}");
  fruits[1] = "Pineapple";
  print(fruits);
}

void task6() {
  List<int> numbers = List.filled(4, 0);
  numbers[0] = 5;
  numbers[1] = 10;
  numbers[2] = 15;
  numbers[3] = 20;
  print(numbers);
}

void task7() {
  Map<String, String> countries = {
    "Egypt": "Cairo",
    "France": "Paris",
    "Japan": "Tokyo"
  };
  countries["Germany"] = "Berlin";
  print("Capital of France: ${countries["France"]}");
}

void task8() {
  int a = 10;
  int b = 3;
  print("Sum: ${a + b}");
  print("Difference: ${a - b}");
  print("Product: ${a * b}");
  print("Remainder: ${a % b}");
}

void task9() {
  String firstName = "Ahmed";
  int age = 25;
  print("My name is $firstName and I am $age years old.");
}

void task10() {
  double price = 100.0;
  double taxRate = 0.15;
  double totalPrice = price + (price * taxRate);
  print("Total price after tax: $totalPrice");
}