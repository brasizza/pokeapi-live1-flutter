import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/app/modules/pokemon_detail/components/list_stats.dart';
import 'package:pokemon/app/modules/pokemon_detail/components/list_types.dart';

import './pokemon_detail_controller.dart';

class PokemonDetailPage extends GetView<PokemonDetailController> {
  const PokemonDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.pokemonDetail?.pokemonName ?? '')),
      ),
      body: Column(
        children: [
          Center(child: Image.network(controller.pokemon.pokemonImage, height: 200)),
          Obx(() => Text(
                controller.pokemonDetail?.weight.toString() ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              )),
          SizedBox(
            height: 50,
            child: Obx(() => ListTypes(
                  types: controller.pokemonDetail?.pokemonTypes,
                )),
          ),
          SizedBox(
            height: 50,
            child: Obx(() => ListStats(
                  stats: controller.pokemonDetail?.pokemonStats,
                )),
          ),
        ],
      ),
    );
  }
}
