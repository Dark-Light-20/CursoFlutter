import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rickandmortyapi/models/character.model.dart';
import 'package:rickandmortyapi/models/characters_response.model.dart';

class CharactersProvider extends ChangeNotifier {
  final String _baseUrl = "rickandmortyapi.com";
  List<Character> characters = [];
  int _page = 0;

  CharactersProvider() {
    getCharacters();
  }

  Future<String> _getJsonData(String segmentUrl, [int page = 1]) async {
    final url = Uri.https(_baseUrl, segmentUrl, {"page": "$page"});
    final response = await http.get(url);
    if (response.statusCode != 200) return "Error on the request";
    return response.body;
  }

  getCharacters() async {
    final jsonData = await _getJsonData("/api/character");
    final charactersResponse = CharactersResponse.fromJson(jsonData);
    characters = charactersResponse.characters;
    // notify to widgets that are listening with new data and re render
    notifyListeners();
  }
}
