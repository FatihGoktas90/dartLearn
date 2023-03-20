void main(List<String> args) {
  final userNormal = User('Fatih', 15);
  userNormal.sayMoneyWithCompanyName();
  final usersBank = BankUser('fatih', 15, 123);
  final specialBankUser = SpecialUser('fatih', 15, 152, 153);

  usersBank.sayMoneyWithCompanyName();
  specialBankUser.sayMoneyWithCompanyName();

  print(specialBankUser.calculateMoney);
  print(specialBankUser.money);
}

abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Ahmet - $money paraniz vardir');
  }
}




class User extends IUser {
  final String name;
  final int money;
  User(this.name, this.money) : super(name, money);
  // void sayMoneyWithCompanyName() {
  //   print('Ahmet - $money paraniz vardir');
  // }
}

class BankUser extends IUser {
  // final String name;
  // final int money;
  final int bankingCode;
  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final int bankingCode;
  late final int _discount;
  SpecialUser(String name, int money, this.bankingCode, int discount)
      : super(name, money) {
    _discount = discount;
  }

  int get calculateMoney => money - (money ~/ _discount);
}
