import 'package:flutter/material.dart';

class CharacterSearchDelegate extends SearchDelegate {
  @override
  String? get searchFieldLabel => 'Buscar personajes';

  @override
  List<Widget>? buildActions(BuildContext context) {
    // Floating right buttons
    return [
      IconButton(onPressed: () => query = '', icon: const Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // Get back button
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('buildSuggestions');
  }
}
