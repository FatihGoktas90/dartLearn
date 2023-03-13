void main(List<String> args) {
  final int userMoney = 0;
  final int user2Money = 5;
  controlUserMoney(userMoney, 0);
  controlUserMoney(user2Money, 5);

  /*if (userMoney > 0) {
    print('parasi var');
  } else {
    print('parasi yok');
  }*/

  final newUserMoney = 50;

  int result = convertToDolar(newUserMoney, 12);
  print(result);

  final newResult = convartToStandartDolar(100, dolarIndex: 13);
  print(newResult);
  final newResult2 = convartToEuro(userMoney: 500);
  print(newResult2);
  sayHello('aa');
}

void controlUserMoney(int money, int minimumValue) {
  if (money > minimumValue) {
    print('parasi var');
  } else {
    print('parasi yok');
  }
}

int convertToDolar(int userMoney, int dolarIndex) {
  return userMoney ~/ dolarIndex;
}

int convartToStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

int convartToEuro({required int userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return 'Hello $name';
}
