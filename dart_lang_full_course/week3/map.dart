void main(List<String> args) {
  // musteri geldi adi ahmet parasi 20

  Map<String, int> users = {'ahmet': 20, 'mehmet': 30};

  print('ahmetin parasi ${'ahmet'}');

  // kimler var
  print('--------------------');
  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }
  print('--------------------');
  for (int i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }
  print('--------------------');
  final Map<String, List<int>> vbBank = {
    'ahmet': [100, 300, 200],
  };

  vbBank['mehmet'] = [30, 50];
  vbBank['veli'] = [30];

  for (var item in vbBank.keys) {
    // bankanın tüm elemanları
    for (var money in vbBank[item]!) {
      // user in hesapları
      if (money > 100) {
        print('kredin hazir');
        //return;
        break;
      }
    }
  }
  print('--------------------');
  // adamların hesaplarının toplam miktarı

  for (var name in vbBank.keys) {
    int result = 0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }
    print('$name  senin toplam paran --> $result');
  }

  print('--------------------');
}
