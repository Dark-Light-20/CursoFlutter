void main(List<String> args) {
  // const: crea su espacio en memoria en tiempo de compilación
  const apiKey = "key1234";
  print(apiKey);
  // apiKey = "key5678"; // no se puede

  const List<String> products = ['Notebook', 'Headphones', 'Speakers'];
  print(products);
  // products.add('Mouse'); // *** Rise error at runtime
  // print(products);

  const Set<String> languages = {'English', 'Spanish'};
  print(languages);
  // languages.add('Italian'); // Don't rise error at runtime
  // print(languages);

  const Map<String, dynamic> user = {'id': 12, 'name': 'Sora'};
  print(user);
  // user['role'] = 'USER'; // Don't rise error
  // print(user);
}
