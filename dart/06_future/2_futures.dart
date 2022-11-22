import 'dart:io';

void main(List<String> args) {
  File file = new File(Directory.current.path + "/06_future/assets/users.txt");
  print(Directory.current.path);
  Future<String> myFile = file.readAsString();
  myFile
      .then((value) => print(value))
      .catchError((error) => print("Error: $error"));
}
