void main(List<String> args) {
  int money = 50;

  String userName = "Fatih";

  // bool => 0 ,1

  bool isCustomerRich = false;

  if (money > 10) {
    print("Sen zenginsin abi");
  } else {
    print("Sen fakirsin reis");
  }

  money -= 10;

  if (money > 10) {
    print("Sen çok  zenginsin abi");
  } else {
    print("Sen fakirsin reis");
  }

  // musteri bankaya gelir 10 var
  // sorgu sonucu 20 si alınır
  // eger kalan parası 0 dan kucukse kovulur

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > 10) {
    print("hosgeldiniz ");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print("lutfen sıra alınız");
  } else {
    print("Kredinizi ödeyin");
  }

  //print("$money " + userName);

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const int companyLength = 2;

  String results = "";

  if (ahmetCompany.length > companyLength) {
    results = results + ahmetCompany;
  }

  if (mehmetCompany.length > companyLength) {
    results = results + mehmetCompany;
  }

  if (veliCompany.length > companyLength) {
    results = results + veliCompany;
  }
  if (kxCompany.length > companyLength) {
    results = results + kxCompany;
  }
  if (xCompany.length > companyLength) {
    results = results + xCompany;
  }
  if (results.isEmpty) {
    print("Patron bulamadık");
  } else {
    print(results);
  }
}
