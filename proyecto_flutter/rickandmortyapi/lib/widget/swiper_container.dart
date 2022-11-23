import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:rickandmortyapi/models/models.dart';

class SwiperContainer extends StatelessWidget {
  const SwiperContainer({super.key, required this.characters});

  final List<Character> characters;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Get device size
    if (characters.isEmpty) {
      return SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(itemCount: characters.length),
    );
  }
}
