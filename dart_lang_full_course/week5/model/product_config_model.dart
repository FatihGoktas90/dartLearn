// ignore_for_file: public_member_api_docs, sort_constructors_first

// Eager kullanım

class ProductConfig {
  static final ProductConfig instance = ProductConfig._("a");

  final String apiKey;

  ProductConfig._(this.apiKey);
}

// Lazy Kullanım 
class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
}
