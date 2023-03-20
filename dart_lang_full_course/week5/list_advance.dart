// ignore_for_file: public_member_api_docs, sort_constructors_first
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
}

class CarModel {
  final CarModels category;

  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  CarModel(
    this.category, {
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });
}

enum CarModels { bmw, toyota, yamaha }
