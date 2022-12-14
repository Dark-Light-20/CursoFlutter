import 'package:flutter/material.dart';
import 'package:rickandmortyapi/models/models.dart';

class CharacterSlider extends StatefulWidget {
  const CharacterSlider(
      {super.key,
      required this.characters,
      this.title,
      required this.onNextPage});

  final List<Character> characters;
  final String? title;
  final Function onNextPage;

  @override
  State<CharacterSlider> createState() => _CharacterSliderState();
}

class _CharacterSliderState extends State<CharacterSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Allows to create a in initState a listener
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 500) widget.onNextPage();
      print(scrollController.position.pixels);
      print(scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        children: [
          if (widget.title != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(widget.title!,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
            controller: scrollController,
            itemCount: widget.characters.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => _CharacterPoster(
              character: widget.characters[index],
              characterId:
                  '${widget.title}-${index}-${widget.characters[index].id}',
            ),
          ))
        ],
      ),
    );
  }
}

class _CharacterPoster extends StatelessWidget {
  const _CharacterPoster({
    super.key,
    required this.character,
    required this.characterId,
  });

  final Character character;
  final String characterId;

  @override
  Widget build(BuildContext context) {
    character.characterId = characterId;
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, "detail", arguments: character),
          child: Hero(
            tag: character.characterId!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage("assets/no-image.jpg"),
                image: NetworkImage(character.image),
                width: 130,
                height: 190,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          character.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
