import 'dart:convert';

import 'package:rickandmortyapi/models/character.model.dart';
import 'package:rickandmortyapi/models/info.model.dart';

class CharactersResponse {
  CharactersResponse({
    // required this.info,
    required this.characters,
  });

  // Info info;
  List<Character> characters;

  factory CharactersResponse.fromJson(String str) =>
      CharactersResponse.fromMap(json.decode(str));

  factory CharactersResponse.fromMap(Map<String, dynamic> json) =>
      CharactersResponse(
        // info: Info.fromMap(json["info"]),
        characters: List<Character>.from(
            json["results"].map((x) => Character.fromMap(x))),
      );
}
