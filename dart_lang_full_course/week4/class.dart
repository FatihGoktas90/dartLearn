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

  User user2 = User('aa', 15, id: '123');

  User user3 = User('aa', 15, age: 13, id: '123');

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
  print(user3.id);
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

class User {
  // ozellikleri neler

  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;

  String id;

  User(String name, int money, {required this.id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    userCode = (city ?? 'ist') + name;
  }
}

//----------------

class User2 {
  // ozellikleri neler

  final String name;
  final int money;
  final int? age;
  final String? city;
  late final String userCode;

  User2(this.name, this.money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
  }
}
