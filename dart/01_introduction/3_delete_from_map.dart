void main(List<String> args) {
  Map<int, String> productos = {
    0: 'Iphone 14 pro max',
    1: 'Notebook Gamer MSI',
    2: 'Microfono Blue Yeti'
  };
  //* Por defecto
  print(productos);
  //* Eliminar un elemento del diccionario
  productos.remove(2);
  print(productos);
}
