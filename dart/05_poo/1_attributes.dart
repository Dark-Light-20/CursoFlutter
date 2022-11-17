import 'class/student.dart';

void main(List<String> args) {
  // Student s1 = new Student('Dark', 'Light', 23, '300', []);
  Student s2 = new Student(
      name: 'Dark', lastname: 'Light', phone: '300', grades: [60, 50, 70, 40]);
  s2.getAverage();
}
