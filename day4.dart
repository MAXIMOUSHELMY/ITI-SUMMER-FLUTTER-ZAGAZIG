// task 1
class Patient {
  String name;
  String _NationalId;
  Patient(this.name, this._NationalId);
}

class Doctor {
  String name;
  String department;
  Doctor(this.name, this.department);
}

class Appointment {
  Patient p;
  Doctor d;
  DateTime time;
  Appointment(this.p, this.d, this.time);
}

class Schedule {
  List<Appointment> apps = [];
  bool add(Appointment a) {
    for (var x in apps) {
      if (x.d == a.d && x.time == a.time) return false;
    }
    apps.add(a);
    return true;
  }
}

void task1() {
  var p = Patient('Ali', '123');
  var d = Doctor('Sara','sugrat');
  var s = Schedule();
  print(s.add(Appointment(p, d, DateTime(2025, 8, 17, 9))));
  print(s.add(Appointment(p, d, DateTime(2025, 8, 17, 9))));
}

// task 2
abstract class Shape {
  double area();
  double perimeter();
}

class Circle implements Shape {
  double r;
  Circle(this.r);
  double area() => 3.14 * r * r;
  double perimeter() => 2 * 3.14 * r;
}

class Rectangle implements Shape {
  double w, h;
  Rectangle(this.w, this.h);
  double area() => w * h;
  double perimeter() => 2 * (w + h);
}

class Triangle implements Shape {
  double a, b, c;
  Triangle(this.a, this.b, this.c);
  double area() => 0;
  double perimeter() => a + b + c;
}

void task2() {
  var shapes = [Circle(2), Rectangle(2, 3), Triangle(3, 4, 5)];
  for (int i = 0; i < shapes.length; i++) {
    print(shapes[i].area());
  }
}

// task 3
abstract class PricingRule {
  double getPrice(double base, int qty);
}

class StandardPricing implements PricingRule {
  double getPrice(double base, int qty) => base * qty;
}

class Product {
  String name;
  double _price;
  Product(this.name, this._price);
  double get price => _price;
}

class CartItem {
  Product p;
  int q;
  PricingRule rule;
  CartItem(this.p, this.q, this.rule);
  double total() => rule.getPrice(p.price, q);
}

class ShoppingCart {
  List<CartItem> items = [];
  double total() => items.fold(0.0, (a, b) => a + b.total());
}

void task3() {
  var c1 = ShoppingCart();
  c1.items.add(CartItem(Product('A', 10), 2, StandardPricing()));
  print(c1.total());
}

// task 4
class BankAccount {
  String _id;
  double _balance;
  BankAccount(this._id, this._balance);
  void deposit(double amount) => _balance += amount;
  bool withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      return true;
    }
    return false;
  }
  double get balance => _balance;
}

void task4() {
  var acc = BankAccount('001', 1000);
  acc.deposit(500);
  print(acc.withdraw(300));
  print(acc.balance);
}

// task 5
class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);
}

class Manager extends Employee {
  double bonus;
  Manager(String name, double salary, this.bonus) : super(name, salary);
  double totalSalary() => salary + bonus;
}

void task5() {
  var m = Manager('Omar', 5000, 1000);
  print(m.totalSalary());
}

// task 6
class Vehicle {
  void move() {}
}

class Car extends Vehicle {
  void move() => print('Car is moving');
}

class Bike extends Vehicle {
  void move() => print('Bike is moving');
}

void task6() {
  var v1 = Car();
  var v2 = Bike();
  v1.move();
  v2.move();
}

// task 7
class Student {
  String name;
  int age;
  Student(this.name, this.age);
}

void task7() {
  var s = Student('Mona', 20);
  print(s.name);
  print(s.age);
}

// task 8
class Animal {
  void sound() {}
}

class Dog extends Animal {
  void sound() => print('Bark');
}

class Cat extends Animal {
  void sound() => print('Meow');
}

void task8() {
  var d = Dog();
  var c = Cat();
  d.sound();
  c.sound();
}

// task 9
class MathUtil {
  static int square(int x) => x * x;
}

void task9() {
  print(MathUtil.square(4));
}

// task 10
abstract class Order {
  int id;
  Order(this.id);
}

class OnlineOrder extends Order implements Trackable {
  String status;
  OnlineOrder(int id, this.status) : super(id);
  @override
  String track() => "Online order $id is $status";
}

class InStoreOrder extends Order implements Trackable {
  String status;
  InStoreOrder(int id, this.status) : super(id);
  @override
  String track() => "In-store order $id is $status";
}

abstract class Trackable {
  String track();
}

void task10() {
  var o1 = OnlineOrder(1, "shipped");
  var o2 = InStoreOrder(2, "ready for pickup");
  print(o1.track());
  print(o2.track());
}

// task 11
abstract class SmartDevice {
  void turnOn();
  void turnOff();
}

abstract class VoiceControlled {
  void voiceCommand(String command);
}

abstract class AppControlled {
  void appControl(String action);
}

class SmartLight extends SmartDevice implements VoiceControlled, AppControlled {
  @override
  void turnOn() => print("Light turned on");
  @override
  void turnOff() => print("Light turned off");
  @override
  void voiceCommand(String command) => print("Voice command: $command");
  @override
  void appControl(String action) => print("App control: $action");
}

void task11() {
  var light = SmartLight();
  light.turnOn();
  light.voiceCommand("Dim");
  light.appControl("Off");
}

// task 12
class Content {
  String title;
  String body;
  Content(this.title, this.body);
}

class Article extends Content implements Searchable {
  Article(String title, String body) : super(title, body);
  @override
  bool search(String keyword) => title.contains(keyword) || body.contains(keyword);
}

class Video extends Content implements Searchable {
  Video(String title, String body) : super(title, body);
  @override
  bool search(String keyword) => title.contains(keyword);
}

class Podcast extends Content implements Searchable {
  Podcast(String title, String body) : super(title, body);
  @override
  bool search(String keyword) => body.contains(keyword);
}

abstract class Searchable {
  bool search(String keyword);
}

void task12() {
  var a = Article("Dart OOP", "Encapsulation and Inheritance");
  print(a.search("Dart"));
}

// task 13
abstract class Bookable {
  void book();
}

class FlightBooking implements Bookable {
  @override
  void book() => print("Flight booked");
}

class HotelBooking implements Bookable {
  @override
  void book() => print("Hotel booked");
}

class CarRental implements Bookable {
  @override
  void book() => print("Car rented");
}

void task13() {
  Bookable b = FlightBooking();
  b.book();
}

// task 14
abstract class MediaItem {
  void play();
}

class Song extends MediaItem {
  @override
  void play() => print("Playing song");
}

class PodcastEpisode extends MediaItem {
  @override
  void play() => print("Playing podcast episode");
}

void task14() {
  List<MediaItem> items = [Song(), PodcastEpisode()];
  for (var i in items) {
    i.play();
  }
}

// task 15
abstract class Translatable {
  String translate(String text);
}

class EnglishTranslator implements Translatable {
  @override
  String translate(String text) => "English: $text";
}

class ArabicTranslator implements Translatable {
  @override
  String translate(String text) => "Arabic: $text";
}

void task15() {
  var t = ArabicTranslator();
  print(t.translate("Hello"));
}

// task 16
abstract class Character {
  String name;
  Character(this.name);
}

class Warrior extends Character implements Attackable {
  Warrior(String name) : super(name);
  @override
  void attack() => print("$name attacks with sword");
}

class Mage extends Character implements Attackable {
  Mage(String name) : super(name);
  @override
  void attack() => print("$name casts spell");
}

class Archer extends Character implements Attackable {
  Archer(String name) : super(name);
  @override
  void attack() => print("$name shoots arrow");
}

mixin Flyable {
  void fly() => print("Flying");
}

mixin Swimmable {
  void swim() => print("Swimming");
}

abstract class Attackable {
  void attack();
}

void task16() {
  var c = Warrior("Thor");
  c.attack();
}

// task 17
abstract class Staff {
  String name;
  Staff(this.name);
}

class DDoctor extends Staff {
  DDoctor(String name) : super(name);
}

class Nurse extends Staff {
  Nurse(String name) : super(name);
}

class Technician extends Staff {
  Technician(String name) : super(name);
}

void task17() {
  var d = DDoctor("Smith");
  print(d.name);
}

// task 18
abstract class Scorable {
  int score();
}

class Player implements Scorable {
  String name;
  int goals;
  Player(this.name, this.goals);
  @override
  int score() => goals;
}

class Team implements Scorable {
  String name;
  List<Player> players;
  Team(this.name, this.players);
  @override
  int score() => players.fold(0, (a, b) => a + b.score());
}

class Match {
  Team t1;
  Team t2;
  Match(this.t1, this.t2);
}

void task18() {
  var p1 = Player("Ali", 2);
  var team = Team("TeamA", [p1]);
  print(team.score());
}

// task 19
abstract class InventoryItem {
  int stock;
  InventoryItem(this.stock);
  void addStock(int qty) => stock += qty;
  void removeStock(int qty) => stock -= qty;
}

class Electronics extends InventoryItem {
  Electronics(int stock) : super(stock);
}

class Furniture extends InventoryItem {
  Furniture(int stock) : super(stock);
}

void task19() {
  var e = Electronics(10);
  e.addStock(5);
  print(e.stock);
}

// task 20
abstract class Loggable {
  void log(String message);
}

class ConsoleLogger implements Loggable {
  @override
  void log(String message) => print("Console: $message");
}

class FileLogger implements Loggable {
  @override
  void log(String message) => print("File: $message");
}

class DatabaseLogger implements Loggable {
  @override
  void log(String message) => print("Database: $message");
}

void task20() {
  Loggable l = ConsoleLogger();
  l.log("Hello");
}

// task 21
abstract class WorkflowStep {
  void execute();
}

abstract class Reversible {
  void undo();
}

class PrintStep extends WorkflowStep implements Reversible {
  @override
  void execute() => print("Executing step");
  @override
  void undo() => print("Undo step");
}

void task21() {
  var s = PrintStep();
  s.execute();
  s.undo();
}

// task 22
abstract class Gradable {
  int grade();
}

class Question {
  String text;
  Question(this.text);
}

class MCQ extends Question implements Gradable {
  int marks;
  MCQ(String text, this.marks) : super(text);
  @override
  int grade() => marks;
}

class Essay extends Question implements Gradable {
  int marks;
  Essay(String text, this.marks) : super(text);
  @override
  int grade() => marks;
}

class Exam {
  List<Gradable> questions;
  Exam(this.questions);
  int total() => questions.fold(0, (a, b) => a + b.grade());
}

void task22() {
  var exam = Exam([MCQ("Q1", 5), Essay("Q2", 10)]);
  print(exam.total());
}

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
  task11();
  task12();
  task13();
  task14();
  task15();
  task16();
  task17();
  task18();
  task19();
  task20();
  task21();
  task22();
}
