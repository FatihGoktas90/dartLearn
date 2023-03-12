void main(List<String> args) {
  // musterinin adını tut
  // musterinin parasını ogren
  // musteriye merhaba de parasını söyle
  // banka +5 ekle

  print('Merhaba ' + '${25 + 5}');

  int userMoney = 25;
  String userName = 'Fatih';

  userMoney += 5;

  print('Merhaba $userName $userMoney');

  print('--------------------');

  userMoney -= 10;

  userMoney = userMoney ~/ 2;

  print('paraniz deger kaybetti $userMoney');

  double ahmetMoney = 15.2;

  ahmetMoney = ahmetMoney / 2;

  print('Ahmet bey in parasi $ahmetMoney');
}
