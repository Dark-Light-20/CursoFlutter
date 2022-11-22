// Like promises in javascript

void main(List<String> args) {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), (() {
    print("3 seconds later");
    return "Returns a feature";
    // throw Exception("An error has ocurred");
  }));

  timeout.then((value) => print(value)).catchError((error) => print(error));
}
