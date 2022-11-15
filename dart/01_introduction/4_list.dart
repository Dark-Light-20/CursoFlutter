//* Listas en dart "Son los famosos array"

void main(List<String> args) {
  //* inferencia de tipos
  //* Cuando tenemos una lista de varios elementos de distinto tipo, dart infiere el tipo Object
  //* los indices en las listas comienzan desde 0
  var myList = ['usuario', true, 10, 2.4];
  // print(myList);

  //* Listas con tipo (String)
  List<String> tecnologias = ['Kotlin', 'Dart', 'Ionic'];
  // print(tecnologias);
  //* Cambiar el elemento de una posición
  tecnologias[0] = 'Java';
  // print(tecnologias);

  //* Añadir un elemento a la lista
  tecnologias.add('Node');
  tecnologias.add('Node');
  tecnologias.add('Node');
  //* En una Lista se pueden tener elementos duplicados
  print(tecnologias); // [Java, Dart, Ionic, Node, Node, Node]

  //* Transformamos la lista en un Set y luego volvemos a transformarlo en una Lista
  Set<String> tecnologiasSet = tecnologias.toSet();
  print("Tecnologias con Set: $tecnologiasSet");
  //* Transformando a una Lista nuevamente
  List<String> listaTecnologiasTransform =
      tecnologiasSet.toList(); //* de un Set transformamos a una Lista
  print('Tecnologias con Set transformada a List: $listaTecnologiasTransform');

  //*
  //* SETS
  // var lenguajes = {'Java', 'C#', 'Python'};
  Set<String> lenguajes = {'Java', 'C#', 'Python'};
  //* Admiten valores duplicados
  lenguajes.add('Dart');
  lenguajes.add('Dart');
  lenguajes.add('Dart');
  lenguajes.add('Dart');
  lenguajes.add('Dart');
  //print(lenguajes);
}
