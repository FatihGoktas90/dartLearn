void main(List<String> args) {
  int money = 5;

  money += 1;

  money++;

  String name = "Veli";

  String soyad = "Fatih";

  print(name + soyad);

  if (name == 'fatih') {}

  if (name.length > 'fatih'.length) {}

  const int appleMoney = 10;

  const double disCount = 9.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disCount);

  print(myMoney);

  print(myMoney % 2 == 0);

  print(myMoney.isEven);
}
