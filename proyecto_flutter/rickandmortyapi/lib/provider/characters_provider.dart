import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CharactersProvider extends ChangeNotifier {
  final String _baseUrl = "rickandmortyapi.com";
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
    print(jsonData);
  }
}
