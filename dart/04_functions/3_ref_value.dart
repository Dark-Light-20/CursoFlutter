Map<String, String> capitalizeMap(Map<String, String> map) {
  // use spread operator to create another reference
  map = {...map};
  map['name'] = map['name']!.toUpperCase();
  return map;
}

Map<String, String> capitalizeMapError(Map<String, String> map) {
  map['name'] = map['name']!.toUpperCase();
  // map['name'] = map['name']?.toUpperCase() ?? 'No name';
  return map;
}

void main(List<String> args) {
  Map<String, String> product = {'name': 'gamer keyboard'};
  Map<String, String> client = {'name': 'Dark'};

  Map<String, String> clientCapitalized = capitalizeMapError(client);

  print('No Capitalized: $client');
  print('Capitalized: $clientCapitalized');

  Map<String, String> productCapitalized = capitalizeMap(product);

  print('No Capitalized: $product');
  print('Capitalized: $productCapitalized');
}
