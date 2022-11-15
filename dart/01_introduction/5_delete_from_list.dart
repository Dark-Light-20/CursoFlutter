void main(List<String> args) {
  //* Eliminar elementos de una lista
  List<int> numbers = [1, 2, 3, 4];
  print(numbers);

  void addNewNumber(int number) {
    numbers.removeWhere((item) => item == number);
    numbers.add(number);
  }

  addNewNumber(1);

  print(numbers);
}
