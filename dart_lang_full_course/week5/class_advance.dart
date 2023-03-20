// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = _User('veli', age: 21);

  // if((user.age ?? 0) <18){

  // }

  if (user.age is! int) {
    if (user.age! < 18) {
      print('evet kücük');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(15);
    }
  }
  final _newType = user.noneyType is String ? user.noneyType as String : "";

  print(_newType + "A");

  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print('ok');
  }

  final moneyBank1 = Bank(45, '12');
  final moneyBank2 = Bank(30, '12');

  if (moneyBank1 == moneyBank2) {
    print('ok');
  } else {
    print('no');
  }

  print(moneyBank1 + moneyBank2);

  print(moneyBank1 == moneyBank2);

  print(moneyBank1.toString());

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..name = 'Fatih'
    ..updateName('fatih');
}

class _User with BankMixin {
  final String name;

  int? age;

  dynamic noneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    noneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    noneyType = number;
  }

  @override
  void sayBankHello() {}
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;
  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + "Fatih";
  }

  // @override
  // bool operator ==(covariant Bank other) {
  //   if (identical(this, other)) return true;

  //   return
  //     other.money == money &&
  //     other.id == id;
  // }

  // @override
  // int get hashCode => money.hashCode ^ id.hashCode;

  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();
  void calculateMoney(int money) {
    print('money');
  }
}
