import 'dart:io';

void main(List<String> args) async {
  String path = Directory.current.path + "/06_future/assets/users.txt";
  try {
    String text = await readFile(path);
    print(text);
  } catch (e) {
    throw Exception(e);
  }
}

Future<String> readFile(String path) async {
  File file = File(path);
  return file.readAsString();
}
