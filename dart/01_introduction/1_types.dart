void main(List<String> args) {
  //* infiere el tipo una vez que lo identifica no puedo asignarle otro valor que no sea del tipo inferido
  var numero = 20;
  // numero = 'miguel';
  print(numero);
  // print("Hola Mundo");
  //* null salfety
  int? edad = null;
  print(edad);
  //* Strings
  // var cuidad = 'Madrid';
  String cuidad = 'Madrid';
  print(cuidad); //* Madrid
  String? pais;
  print(pais); //* null
  //* 'Madrid' o "Madrid", da lo mismo, lo que quieras utilizar

  //* Interpolación

  String nickname = 'mramos';
  String game = 'AgeOfEmpires';

  print("el nick: $nickname, es un jugador de: $game");
  //* el nick: mramos, es un jugador de: AgeOfEmpires
}
