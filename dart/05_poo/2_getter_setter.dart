import 'class/student_enc.dart';

void main(List<String> args) {
  StudentEncapsulated student = new StudentEncapsulated();
  student.name = 'Dark'; // setter
  print(student.name); // getter
  student.grades = [60, 50, 70];
  student.getAverage();
}
