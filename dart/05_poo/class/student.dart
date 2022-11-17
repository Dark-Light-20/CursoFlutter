class Student {
  String name;
  String lastname;
  int age;
  String phone;
  List<double> grades;

  // Student(this.name, this.lastname, this.age, this.phone, this.grades) {}

  Student(
      {required this.name,
      this.lastname = '',
      this.age = 0,
      this.phone = '',
      this.grades = const []}) {}

  void getAverage() {
    print("The average of the student $name is: ${_getStudentAverage()}");
  }

  double _getStudentAverage() {
    return this.grades.reduce((value, element) => (value + element)) /
        this.grades.length;
  }
}
