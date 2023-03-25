// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  IDatabase database = SQL();

  database = Mongo();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName('Fatih');
    changeLocalization();
  }

  void changeLocalization() {
    print('Burada degistir.');
  }
}

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(super.name, super.money);

  final String category = 'asd';
}

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
  }
}

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void localizationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void localizationChange() {
  }
}

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  
  @override
  void readQR() {
   // iphoneCameraRead.
  }


}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {}
}
