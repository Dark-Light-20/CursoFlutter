void main(List<String> args) {
  // final: es asignado en tiempo de ejecución, pero una vez que se
  // recibe un valor, no se puede cambiar
  final PI;
  PI = 3.14;
  print(PI);
  // PI = 3.1416; // no se puede

  final List<String> products = ['Notebook', 'Headphones', 'Speakers'];
  print(products);
  products.add('Mouse'); // Don't rise error
  print(products);

  final Set<String> languages = {'English', 'Spanish'};
  print(languages);
  languages.add('Italian'); // Don't rise error
  print(languages);

  final Map<String, dynamic> user = {'id': 12, 'name': 'Sora'};
  print(user);
  user['role'] = 'USER'; // Don't rise error
  print(user);
}
