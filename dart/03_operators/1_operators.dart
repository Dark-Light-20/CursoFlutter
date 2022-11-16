void main(List<String> args) {
  int? numero2 = null;
  numero2 ??= 20; //* asignar unicamente si la variable es null
  // print(numero2);

  // int numero = 10;
  // //* Operador ternario
  // String respuesta = numero > 17 ? 'Es mayor a 17': 'Es menor a 17';
  // print(respuesta);

  //* Si el valor es null usa otra variable

  int? enteroNull;
  // print(enteroNull); //* null
  const numeroContingencia = 10;
  int valorFinal = enteroNull ?? numeroContingencia;
  // print(valorFinal);

  //* Operadores Relacionales
  //* Todos retornan un valor booleano
  /*
    > Mayor que
    < Menor que
    >= Mayor o igual que
    <= Menor o igual que

    == Revisa si dos objetos son iguales
    != Revisa si dos objetos son diferentes

  */

  String fullname = 'Miguel Ramos';
  String nickname = 'mramos';
  //*  = asignacion, == comparación
  print(fullname == nickname); // ? false
  print(fullname != nickname); // ? true

  int valor1 = 20;
  int valor2 = 30;

  print(valor1 > valor2); // ? false
  print(valor1 < valor2); // ? true
}
