void main(List<String> args) {
  //* Mapas (Diccionarios, Objetos Literales)
  //* Son una colección de clave-valor, nos ayuda asociar una clave con un valor
  //* para poder crearlos hay que especificar el tipo de objeto de la clave y del valor
  //* Con inferencia

  var usuario = {'nombre': 'Miguel', 'role': 'Admin', 'id': 10};
  // print(usuario);

  Map<String, dynamic> usuario2 = {
    'id': 1,
    'nombre': 'Pedro',
    'role': 'User',
    'isActive': true
  };
  // print(usuario2);

  //* Como acceder una propiedad del mapa []
  // print(usuario['nombre']); //* Miguel
  // print(usuario2['role']); //* User

  Map<int, String> productos = {
    0: 'Iphone 14 pro max',
    1: 'Notebook Gamer MSI',
    2: 'Microfono Blue Yeti'
  };
  //* El diccionario por defecto
  print(productos);
  //* accediendo al valor de una llave del diccionario
  print(productos[2]); //* Microfono Blue Yeti
  // productos[2] = 'Microfono Hyper X';

  //* Agregar un elemento al Mapa
  productos[3] = 'Monitor MSI 27 pulgadas';
  print(productos);
  //* Otra forma de agregar al Mapa con el "addAll"
  productos.addAll({4: 'Ipad Mini M1'});
  print(productos);

  //* Otra forma de crear Mapas
  Map<String, dynamic> cuenta = new Map();

  cuenta.addAll({
    'id': 371736,
    'rol': 'user',
    'name': 'mramos',
    'password': 'topsecret',
  });

  print(cuenta);
}
