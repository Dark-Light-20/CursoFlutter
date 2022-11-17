class StudentEncapsulated {
  String _name = '';
  String _lastname = '';
  int _age = 0;
  String _phone = '';
  List<double> _grades = const [];

  String get name => this._name;
  set name(String name) => {
        if (name.length > 3)
          this._name = name
        else
          print('Name not meet minimum characters')
      };

  List<double> get grades => this._grades;
  set grades(List<double> grades) => this._grades = grades;

  void getAverage() {
    print(
        "The average of the student ${this._name} is: ${_getStudentAverage()}");
  }

  double _getStudentAverage() {
    return this._grades.reduce((value, element) => (value + element)) /
        this._grades.length;
  }
}
