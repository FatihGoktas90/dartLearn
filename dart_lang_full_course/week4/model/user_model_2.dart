class User2 {
  // ozellikleri neler

  final String name;
  int _money;

  int get money => _money;

  set money(int value) {
    _money = value;
  }

  final int? age;
  final String? city;
  late final String userCode;

  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
  }
}

extension user2ControlExtention on User2 {
  void controlName() {
    print(name);
  }
}
