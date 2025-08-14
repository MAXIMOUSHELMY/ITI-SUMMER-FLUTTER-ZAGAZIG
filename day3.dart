import 'dart:io';
import 'dart:math';
// task 1
void main_1() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync() ?? "";
  stdout.write("Enter your favorite color: ");
  String color = stdin.readLineSync() ?? "";
  print("Hello $name, your favorite color is $color!");
}
// task 2
void main_2() {
  List<int> numbers = [];
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync() ?? "0");
  numbers.add(num1);
  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync() ?? "0");
  numbers.add(num2);
  int sum = numbers[0] + numbers[1];
  print("The sum of the two numbers is: $sum");
}

// task 3
void main_3() {
  stdout.write("Enter a number: ");
  int limit = int.parse(stdin.readLineSync() ?? "0");

  print("Even numbers up to $limit:");
  for (int i = 0; i <= limit; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// task 4
void main_4(){
  List<String> fruits = ["Apple", "Banana", "Mango", "Orange", "Grapes"];
  print("Fruits in reverse order:");
  for (int i = fruits.length - 1; i >= 0; i--) {
    print(fruits[i]);
  }
}

// task 5
void main_5() {
  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync() ?? "";
  List<String> words = sentence.trim().split(RegExp(r"\s+"));
  print("The sentence contains ${words.length} words.");
}

// task 6
void main_6() {
  List<int> nums = [];
  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter integer $i: ");
    int num = int.parse(stdin.readLineSync() ?? "0");
    nums.add(num);
  }
  int largest = nums.reduce((a, b) => a > b ? a : b);
  print("The largest number is: $largest");
}

// task 7
void main_7() {
  Map<String, double> grades = {};
  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter subject $i: ");
    String subject = stdin.readLineSync() ?? "";
    stdout.write("Enter grade for $subject: ");
    double grade = double.parse(stdin.readLineSync() ?? "0");
    grades[subject] = grade;
  }
  double average = grades.values.reduce((a, b) => a + b) / grades.length;
  print("Average grade is: $average");
}

// task 8
void main_8() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!); 
  for (int i = 1; i <= 12; i++) {
    print("$number x $i = ${number * i}"); 
  }
}


// task 9
void main_9() {
  List<String> countries = ['Egypt', 'USA', 'France', 'Japan', 'India'];
  print("Enter a country:");
  String input = stdin.readLineSync()!;
  if (countries.contains(input)) {
    print("$input exists in the list.");
  } else {
    print("$input does not exist.");
  }
}

// task 10
void main_10() {
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  if (age < 13) {
    print("Child");
  } else if (age < 20) {
    print("Teenager");
  } else {
    print("Adult");
  }
}

// task 11
void main_11() {
  print("Enter names separated by comma:");
  List<String> names = stdin.readLineSync()!.split(',');
  for (var name in names) {
    print("Hello $name");
  }
}

// task 12 
void main_12() {
  print("Enter numbers separated by space:");
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print("Odd numbers:");
  for (var n in numbers) {
    if (n % 2 != 0) print(n);
  }
}
int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

// task 13
void main_13() {
  print("Enter two numbers:");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print("GCD is ${gcd(a, b)}");
}

// task 14
void main_14() {
  List<int> numbers = List.generate(10, (i) => i + 1);
  List<int> squares = numbers.map((n) => n * n).toList();
  print("Squares: $squares");
}
 
double celsiusToFahrenheit(double c) => c * 9 / 5 + 32;


// task 15
void main_15() {
  print("Enter temperature in Celsius:");
  double c = double.parse(stdin.readLineSync()!);
  print("Fahrenheit: ${celsiusToFahrenheit(c)}");
}


// task 16
void main_16() {
  Map<String, double> products = {};
  print("Enter 3 products with price (name price):");
  for (int i = 0; i < 3; i++) {
    List<String> input = stdin.readLineSync()!.split(' ');
    products[input[0]] = double.parse(input[1]);
  }
  print("Enter minimum price:");
  double minPrice = double.parse(stdin.readLineSync()!);
  products.forEach((name, price) {
    if (price > minPrice) print("$name: $price");
  });
}

//task 17
void main_17() {
  List<int> numbers = [];
  print("Enter 5 integers:");
  for (int i = 0; i < 5; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int sum = numbers.reduce((a, b) => a + b);
  print("Sum: $sum");
}

// task 18
void main_18() {
  print("Enter numbers separated by space:");
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  print("Enter threshold:");
  int threshold = int.parse(stdin.readLineSync()!);

  List<int> filter(List<int> nums, bool Function(int) callback) {
    return nums.where(callback).toList();
  }

  var result = filter(numbers, (n) => n > threshold);
  print("Filtered numbers: $result");
}

// task 19
void main_19() {
  Map<String, double> employees = {};
  print("Enter 3 employees with salary (name salary):");
  for (int i = 0; i < 3; i++) {
    List<String> input = stdin.readLineSync()!.split(' ');
    employees[input[0]] = double.parse(input[1]);
  }
  employees.updateAll((key, value) => value * 1.1);
  print("Updated salaries: $employees");
}

//task 20
void main_20() {
  print("Enter birth year:");
  int year = int.parse(stdin.readLineSync()!);
  print("Enter birth month (1-12):");
  int month = int.parse(stdin.readLineSync()!);

  DateTime now = DateTime.now();
  int ageYears = now.year - year;
  int ageMonths = now.month - month;
  if (ageMonths < 0) {
    ageYears--;
    ageMonths += 12;
  }
  print("Exact age: $ageYears years and $ageMonths months");
}

// task 21
void main_21() {
  Map<String, double> students = {};
  print("Enter 5 students with score (name score):");
  for (int i = 0; i < 5; i++) {
    List<String> input = stdin.readLineSync()!.split(' ');
    students[input[0]] = double.parse(input[1]);
  }
  var top = students.entries.reduce((a, b) => a.value > b.value ? a : b);
  print("Top scorer: ${top.key} with score ${top.value}");
}

// task 22
void main_22() {
  List<int> numbers = [12, 67, 45, 89, 23, 54];
  var result = numbers.where((n) => n > 50).toList();
  print("Numbers > 50: $result");
}

// task 23
void main_23() {
  print("Enter a string:");
  String text = stdin.readLineSync()!;
  int count = 'aeiouAEIOU'.split('').fold(0, (prev, v) => prev + text.split(v).length - 1);
  print("Vowels count: $count");
}

bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= sqrt(n).toInt(); i++) {
    if (n % i == 0) return false;
  }
  return true;
}
// task 24
void main_24() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);
  print(isPrime(n) ? "$n is prime" : "$n is not prime");
}

// task 24
void main_25() {
  Random r = Random();
  List<int> numbers = List.generate(10, (_) => r.nextInt(100));
  numbers.sort();
  print("Numbers: $numbers");
  print("Smallest: ${numbers.first}, Largest: ${numbers.last}");
}

// task 26
void main_26() {
  List<String> strings = [];
  print("Enter 5 strings:");
  for (int i = 0; i < 5; i++) {
    strings.add(stdin.readLineSync()!);
  }
  strings.sort();
  print("Sorted: $strings");
}

// task 27
void main_27() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;
  for (var word in sentence.split(' ')) {
    print("$word: ${word.length}");
  }
}

// task 28
void main_28() {
  Map<String, int> cities = {
    'Cairo': 20000000,
    'Paris': 1100000,
    'Berlin': 3500000,
    'SmallTown': 50000
  };
  cities.forEach((city, pop) {
    if (pop > 1000000) print("$city: $pop");
  });
}

// task 29
void main_29() {
  print("Enter a string:");
  String text = stdin.readLineSync()!;
  String reversed = '';
  for (int i = text.length - 1; i >= 0; i--) {
    reversed += text[i];
  }
  print("Reversed: $reversed");
}

main_30(){
  print("Enter integers separated by space:");
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int sumEven = 0;
  int sumOdd = 0;
  for (var n in numbers) {
    if (n % 2 == 0) {
      sumEven += n;
    } else {
      sumOdd += n;
    }
  }
  print("Sum of even numbers: $sumEven");
  print("Sum of odd numbers: $sumOdd");
}


// task 31
void main_31() {
  Map<String, int> people = {};
  print("Enter 3 names and ages (name age):");
  for (int i = 0; i < 3; i++) {
    var parts = stdin.readLineSync()!.split(' ');
    people[parts[0]] = int.parse(parts[1]);
  }
  people.forEach((name, age) {
    if (age >= 18) print("$name: $age");
  });
}

// task 32
void main_32() {
  Random r = Random();
  for (int i = 0; i < 5; i++) {
    int a = r.nextInt(10) + 1;
    int b = r.nextInt(10) + 1;
    print("What is $a x $b?");
    int answer = int.parse(stdin.readLineSync()!);
    print(answer == a * b ? "Correct!" : "Wrong! Answer: ${a * b}");
  }
}

// task 33
void main_33() {
  Map<String, int> stock = {'Apple': 10, 'Banana': 5, 'Orange': 8};
  print("Enter product and quantity to buy (name qty):");
  var parts = stdin.readLineSync()!.split(' ');
  String product = parts[0];
  int qty = int.parse(parts[1]);
  if (stock.containsKey(product) && stock[product]! >= qty) {
    stock[product] = stock[product]! - qty;
    print("Purchase successful. Updated stock: $stock");
  } else {
    print("Not enough stock or product not found.");
  }
}

// task 34
void main_34() {
  print("Enter a number:");
  int limit = int.parse(stdin.readLineSync()!);
  int a = 0, b = 1;
  while (a <= limit) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}

//task 35
void main_35() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;
  String result = sentence
      .split(' ')
      .map((w) => w.isEmpty ? w : w[0].toUpperCase() + w.substring(1))
      .join(' ');
  print(result);
}

// task 36
class Car {
  String brand;
  int year;
  Car(this.brand, this.year);
  void display() => print("Brand: $brand, Year: $year");
}

void main_36() {
  print("Enter car brand:");
  String brand = stdin.readLineSync()!;
  print("Enter year:");
  int year = int.parse(stdin.readLineSync()!);
  Car car = Car(brand, year);
  car.display();
}

// task 37
class BankAccount {
  double balance;
  BankAccount(this.balance);
  void deposit(double amount) => balance += amount;
  void withdraw(double amount) => balance -= amount;
}

void main_37() {
  BankAccount acc = BankAccount(0);
  print("Enter deposit amount:");
  acc.deposit(double.parse(stdin.readLineSync()!));
  print("Enter withdraw amount:");
  acc.withdraw(double.parse(stdin.readLineSync()!));
  print("Final balance: ${acc.balance}");
}

// task 38
void main_38() {
  List<double> prices = [100, 200, 300];
  double taxRate = 0.15;
  List<double> afterTax = prices.map((p) => p * (1 + taxRate)).toList();
  print(afterTax);
}

// task 39
class Student {
  String name;
  double score;
  Student(this.name, this.score);
}

void main_39() {
  List<Student> students = [];
  for (int i = 0; i < 3; i++) {
    var parts = stdin.readLineSync()!.split(' ');
    students.add(Student(parts[0], double.parse(parts[1])));
  }
  var best = students.reduce((a, b) => a.score > b.score ? a : b);
  print("Best student: ${best.name} (${best.score})");
}

// task 40
class Library {
  List<String> books = [];
  void addBook(String b) => books.add(b);
  void removeBook(String b) => books.remove(b);
  void displayBooks() => print("Books: $books");
}

void main_40() {
  Library lib = Library();
  lib.addBook("Book1");
  lib.addBook("Book2");
  lib.displayBooks();
  lib.removeBook("Book1");
  lib.displayBooks();
}

// task 41
void main_41() {
  List<int> list = [];
  void onAdd(int item) => print("Added $item");
  for (int i = 0; i < 3; i++) {
    int val = int.parse(stdin.readLineSync()!);
    list.add(val);
    onAdd(val);
  }
}

// task 42
void main_42() {
  List<Map<String, String>> employees = [
    {'name': 'Ali', 'dept': 'IT'},
    {'name': 'Omar', 'dept': 'HR'}
  ];
  print("Enter department:");
  String dept = stdin.readLineSync()!;
  var filtered = employees.where((e) => e['dept'] == dept);
  print(filtered.toList());
}

// task 43
class Person {
  String name;
  Person(this.name);
}

class StudentPerson extends Person {
  int grade;
  StudentPerson(String name, this.grade) : super(name);
}

void main_43() {
  List<StudentPerson> students = [];
  for (int i = 0; i < 2; i++) {
    var parts = stdin.readLineSync()!.split(' ');
    students.add(StudentPerson(parts[0], int.parse(parts[1])));
  }
  students.forEach((s) => print("${s.name} - Grade: ${s.grade}"));
}

// task 44
void main_44() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = n; i >= 0; i--) {
    print(i);
  }
}

// task 45
void main_45() {
  Map<String, int> orders = {'Apple': 3, 'Banana': 2};
  Map<String, double> prices = {'Apple': 2.5, 'Banana': 1.5};
  double total = 0;
  orders.forEach((prod, qty) => total += prices[prod]! * qty);
  print("Total bill: $total");
}

//task 46
class TaskManager {
  List<String> tasks = [];
  void addTask(String t) => tasks.add(t);
  void removeTask(String t) => tasks.remove(t);
  void markDone(String t) => print("Task '$t' done");
}

void main_46() {
  TaskManager tm = TaskManager();
  tm.addTask("Study");
  tm.markDone("Study");
}

// task 47
void main_47() {
  Map<String, double> expenses = {};
  for (int i = 0; i < 3; i++) {
    var parts = stdin.readLineSync()!.split(' ');
    expenses[parts[0]] = double.parse(parts[1]);
  }
  double total = expenses.values.reduce((a, b) => a + b);
  print("Total spending: $total");
}

// task 48
void main_48() {
  List<int> numbers = [1, 2, 3];
  List<int> transform(List<int> nums, int Function(int) func) =>
      nums.map(func).toList();
  print(transform(numbers, (n) => n * n));
}

// task 49
class Shop {
  Map<String, int> stock = {'Apple': 5, 'Orange': 3};
  void buy(String item, int qty) {
    if (stock.containsKey(item) && stock[item]! >= qty) {
      stock[item] = stock[item]! - qty;
      print("Bought $qty $item(s). Remaining: ${stock[item]}");
    } else {
      print("Not enough stock.");
    }
  }
}

void main_49() {
  Shop shop = Shop();
  shop.buy('Apple', 2);
}

// task 50
void main_50() {
  print("Enter password length:");
  int length = int.parse(stdin.readLineSync()!);
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()';
  Random r = Random();
  String password =
      List.generate(length, (_) => chars[r.nextInt(chars.length)]).join();
  print("Password: $password");
}


void main() {
main_1();
main_2();
main_3();
main_4();
main_5();
main_6();
main_7();
main_8();
main_9();
main_10();
main_11();
main_12();
main_13();
main_14();
main_15();
main_16();
main_17();
main_18();
main_19();
main_20();
main_21();
main_22();
main_23();
main_24();
main_25();
main_26();
main_27();
main_28();
main_29();
main_30();
main_31();
main_32();
main_33();
main_34();
main_35();
main_36();
main_37();
main_38();
main_39();
main_40();
main_41();
main_42();
main_43();
main_44();
main_45();
main_46();
main_47();
main_48();
main_49();
main_50();
}
