// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;

  //calculateMoney(Product.money ?? 0);
  //productNameChange();
  // calculateMoney(Product.money ?? 0);

  final user1 = User("Fatih", 'aa');
  final product = Product(user1.product);
  final product2 = Product.fromUser(user1);

  ProductConfig.instance.apiKey;
  // ProductConfig('asdas');
  ProductLazySingleton.instance;

  Product.veli('Ahmet');
}

void calculateMoney(int money) {
  if (money > 5) {
    print('ok 5 tl daha ekledik');
    Product.money += 5;
    Product.incrementMoney(15);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = 0;
}

class Product {
  static int money = 10;
  String name;
  Product(this.name);

  Product.veli([this.name = 'Fatih']);

  factory Product.fromUser(User user) {
    return Product(user.name);
  }
  static const companyName = 'Fatih Bank';
  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;
  User(this.name, this.product);
}
