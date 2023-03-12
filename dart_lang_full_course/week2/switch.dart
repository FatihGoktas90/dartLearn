void main(List<String> args) {
  final int classDegree = 2;

  const int successValueHigh = 2;

  bool isSuccess = false;

  switch (classDegree) {
    case successValueHigh:
      print("Bravo");
      isSuccess = true;
      break;
    case 1:
      print("Olur");
      isSuccess = true;
      break;
    case 0:
      print("Yeterli");
      isSuccess = true;
      break;
    default:
      print("Basarisiz");
      isSuccess = false;
  }

  print("beyfendi cocugunuzun durumu :  $isSuccess");

  String name = "Veli";
  const String specialUser1 = "Veli";
  const String specialUser2 = "Ekin";
  switch (name) {
    case "Veli":
    case "Ekin":
      print("Bravo");
      break;
    default:
      print("sorunlu");
  }

  switch (name) {
    case specialUser1:
    case specialUser2:
      print("Bravo");
      break;
    default:
      print("sorunlu");
  }
}
