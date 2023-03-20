void main(List<String> args) {
  if ('fatih'.isAdmin()) {
    print('object');
  }

  String? name;
  name.isAdmin();
}

extension StringUserCheckExtention on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
