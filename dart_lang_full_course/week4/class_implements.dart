// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final int age;
  IStudent(this.name, this.age);
  int? schoolId;
  void saySomething() {
    print(age);
  }
}

class Student implements IStudent {
  @override
  int get age => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();

  @override
  void saySomething() {}
  
  @override
  int? schoolId;
}

class Student2 implements IStudent {
  final String name;
  final int age;
  Student2(this.name, this.age);

  @override
  void saySomething() {
    print('a');
  }
  
  @override
  int? schoolId;
}
