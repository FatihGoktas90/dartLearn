void main(List<String> args) {
  final String userName = 'Fatih';

  //degişmez
  // final uygulama çalıştıgında runtime daki son degerini alır.time gibi ekran geldiğinde ilk degerini alabilir.
  final int bankMoney = 100;

  // Dynamic
  var userName2 = 'Fatih2';

  // proje başladı kod compile oldu. direk o deger görünür
  const String bankName = 'VB Bank';

  var userName2Money = 15;

  userName2Money -= 2;

  // --------------------------
  // bank name ='VB BANK'
  // bank user 1  = 'bank1musteri'
  // bank user 1 in parası 100.00
  // bank 1 musteriye kimse dokunamaz
  // yeni bir müsteri gelecek adi bank2musteri
  // yeni bankaya gelenden bu bank user 1 parasıni çıkartıp ekrana gösterelim

  const String bankNameSpecial = 'VB Bank';

  const String user1 = "Bank 1 musteri";

  const double user1Money = 100.00;

  const String user2 = "Bank 2 musteri";

  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 Money : $user2Money ");
}
