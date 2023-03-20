import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main(List<String> args) {
  // müşteri adı parası ,yasi

  final customerMoney = 50;
  final String customerName = 'veli';
  final int customerAge = 13;
  final String customerCity = 'Ardahan';
  controlCustomerAge(13);
  // yeni müsteri geliyor yine aynı alanlara sahip
  final customerMoney2 = 50;
  final String customerName2 = 'veli';
  final int customerAge2 = 13;
  controlCustomerAge(13);

  int? newMoney;
  //print(newMoney! +5);

  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('beyfendi');
      } else {
        print('by');
      }
    } else {
      print('Hadi hesap acalim');
    }
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print('------' * 10);

  int customerValue = 15;

  User user1 = User('vb', 15, age: 21, city: 'Ankara', id: '123');

  print(user1.name);
  print('------' * 10);

  if (user1.isSpecial('123')) {
    user1.money += 5;
    print('para eklendi');
    user1.isEmptyId;
  }

  print('-------------');

  User user2 = User('aa', 15, id: '123');

  User user3 = User('aa', 15, age: 13, id: '123');

  User2 newUser2 = User2('fatih', 15);
  newUser2.money += 5;

  //newUser2.toString();
  print(newUser2.toString());

  if (user3.city == null) {
    print('Musteri sehir bilgisini vermemis');
    print(user3.userCode);
  } else {
    if (user3.city!.isEmpty) {
      print('okok');
    }
    if (user3.city == 'İstanbul') {
      print('Tebrikler kazandiniz');
    }
  }
  //print(user3.id);
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  } else {
    return null;
  }
  // if(money == null || money==0 ){
  //    return null;
  //}
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alisveris yapabilirsiniz');
  } else {
    print('alisveris yapamayiz');
  }
}

//----------------

