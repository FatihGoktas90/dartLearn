// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../week4/class_extends.dart';

void main(List<String> args) {
  final model =
      CarModel(CarModels.bmw, name: 'bmw x5', money: 1412, isSecondHand: false);

  final carItems = [
    CarModel(CarModels.bmw, name: 'bmw x5', money: 12, isSecondHand: false),
    CarModel(CarModels.yamaha, name: 'yamaha x5', money: 33),
    CarModel(CarModels.toyota,
        name: 'toyota x5', money: 45, isSecondHand: false),
    CarModel(CarModels.bmw, name: 'bmw x5', money: 44),
    CarModel(CarModels.toyota,
        name: 'toyota x5', money: 55, isSecondHand: false),
  ];

  carItems.add(CarModel(CarModels.mercedes, name: 'mercedes', money: 12131));

  final resultCount =
      carItems.where((element) => element.isSecondHand = true).length;
  print(resultCount);

  final newCar =
      CarModel(CarModels.bmw, name: 'bmw x5', money: 12, isSecondHand: false);

  final isHaveCar = carItems.contains(newCar);

  if (isHaveCar) {
    print('Patron var');
  } else {
    print('Patron yok alalım ');
  }

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();
  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join('----');

  print(carNames);
  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
    isHaveCarMercedes = true;
  } catch (e) {
    print('Araba yok');
    isHaveCarMercedes = false;
  } finally {
    print('her türlü senaryoda calisir $isHaveCarMercedes');
  }

  final index = carItems.indexOf(newCar);
  print(index);

  carItems.sort((first, second) => first.money.compareTo(second.money));

  final users = carItems.expand((element) => element.users).toList();



}

class CarModel {
  final CarModels category;

  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  List<User> users;
  CarModel(
    this.category, {
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users=const []
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, toyota, yamaha, mercedes }
