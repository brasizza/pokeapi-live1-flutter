import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:pokemon/app/data/models/pokemon.dart';

class PokemonHome extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonHome({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Get.toNamed('/detailPokemon', arguments: {'pokemon': pokemon}),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              pokemon.pokemonName.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.network(
              pokemon.pokemonImage,
              height: 200,
            )
          ],
        ),
      )),
    );
  }
}
