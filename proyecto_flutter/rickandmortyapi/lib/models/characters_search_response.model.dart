import 'dart:convert';

import 'package:rickandmortyapi/models/character.model.dart';
import 'package:rickandmortyapi/models/info.model.dart';

class CharactersSearchResponse {
  CharactersSearchResponse({
    required this.characters,
  });

  List<Character> characters;

  factory CharactersSearchResponse.fromJson(String str) =>
      CharactersSearchResponse.fromMap(json.decode(str));

  factory CharactersSearchResponse.fromMap(Map<String, dynamic> json) =>
      CharactersSearchResponse(
        characters: List<Character>.from(
            json["results"].map((x) => Character.fromMap(x))),
      );
}
