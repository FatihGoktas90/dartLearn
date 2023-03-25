void main(List<String> args) {
  //String? userName;

  String userName = 'a';

  // try {
  //   if (userName!.length > 2) {
  //     print('aa');
  //   }
  // } catch (e) {
  //   print(e);
  // }

  if (userName.length > 2) {
    print('aa');
  } else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'user name null girmissin bunu düzelt';
  }
}
