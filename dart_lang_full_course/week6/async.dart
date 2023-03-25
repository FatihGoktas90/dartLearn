Future<void> main(List<String> args) async {
  print('a');
  Stream<int> bankMoney = Stream.empty();
  bankMoney = dataAddBankMoney(15, 3);
  bankMoney.listen(
    (event) {
      print(event);
    },
  );

  //await Future.delayed(Duration(seconds: 2));

  // await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('islem bitti $element');
  // });
  print('ab');

  print('hello1');

  Future.delayed(Duration(seconds: 1)).whenComplete(() => print('Hello2'));

  print('Hello3');

  Future.delayed(Duration(seconds: 1)).whenComplete(() => print('Hello4'));
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}
