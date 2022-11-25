import 'package:flutter/material.dart';
import 'package:rickandmortyapi/models/character.model.dart';

class CharacterDetailPage extends StatelessWidget {
  const CharacterDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Character character =
        ModalRoute.of(context)?.settings.arguments as Character;

    return Scaffold(
      body: CustomScrollView(
        // Allows to have an AppBarSilver
        slivers: [
          _CustomAppBar(character: character),
          SliverList(
              delegate: SliverChildListDelegate([_PosterAndTitle(character)]))
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // Similar to Appbar, but we can control height and width
      backgroundColor: const Color.fromARGB(255, 58, 61, 78),
      expandedHeight: 200,
      pinned: true, // not desapear
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Text(
              character.name,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
        background: const FadeInImage(
          placeholder: AssetImage("assets/loading.gif"),
          image: AssetImage("assets/banner.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            placeholder: AssetImage("assets/no-image.jpg"),
            image: NetworkImage(character.image),
            height: 150,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            Text(
              character.name,
              style: textTheme.headline5,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                const Icon(
                  Icons.photo_album_outlined,
                  color: Colors.green,
                  size: 25,
                ),
                Text(character.location.name, style: textTheme.caption)
              ],
            )
          ],
        )
      ]),
    );
  }
}
