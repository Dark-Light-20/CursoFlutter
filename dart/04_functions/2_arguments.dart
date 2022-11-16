/* Positional arguments, obligatory */
void greet(String name, String? extra, [String? optionalArg]) {
  print('Hi $name!, $extra, $optionalArg');
}

/* 
  Name argument, is optional but need a default value, bypass null value, 
  or required.
*/
void product(String name, {String productType = 'phone', required int price}) {
  print('Product: $name, type: $productType, price: $price');
}

void main(List<String> args) {
  greet("Dark", null);
  product('Macbook', productType: 'laptop', price: 10000);
}
