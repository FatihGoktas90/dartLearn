import 'dart:async';

void main(List<String> args) {
  List<int> moneys = [100, 110, 500, 200, 300];

  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print('Müsteri 1 in parasi ${moneys[0]}');

  moneys.sort();

  moneys.add(5);

  moneys.insert(2, 300);
  // moneys.reversed.toList().add(1);

  print(moneys);

  newMoneys.add(5);

  print(newMoneys);

  newMoneys.clear();

  print(newMoneys);

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });

  print(customerMoney);

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  moneyCustomerNews.sort();
  for (int index = 0; index < moneyCustomerNews.length; index++) {
    print('Müsteri parasi ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('kredi hazır');
    } else if (moneyCustomerNews[index] > 0) {
      print('kredi veremeyiz ama bi bakalım');
    } else {
      print('by');
    }
  }

  var user = [];

  List<dynamic> users = [1, 'a', true];

  for (var item in users) {
    print(item);
  }

  List<String> userNames = ['ali', 'ahmet', 'ayse'];

  userNames.contains('veli');

  for (var item in userNames) {
    if (item == 'ali') {
      print('var');
    }
  }
}
