import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmortyapi/provider/characters_provider.dart';
import 'package:rickandmortyapi/search/character_search_delegate.dart';
import 'package:rickandmortyapi/widget/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final getCharacterProvider =
        Provider.of<CharactersProvider>(context, listen: true);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Rick and Morty"),
          elevation: 10,
          actions: [
            IconButton(
              onPressed: () => showSearch(
                context: context,
                delegate: CharacterSearchDelegate(),
              ),
              icon: const Icon(Icons.search_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SwiperContainer(characters: getCharacterProvider.characters),
            CharacterSlider(
              characters: getCharacterProvider.nextCharacters,
              title: "Personajes",
              onNextPage: () => getCharacterProvider.getNextCharacters(),
            )
          ],
        )));
  }
}
