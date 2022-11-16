String capitalization(String text) {
  text = text.toUpperCase();
  return text;
}

void main(List<String> args) {
  String product = 'Notebook';
  String productCapitalized = capitalization(product);

  print(product);
  print(productCapitalized);
}
