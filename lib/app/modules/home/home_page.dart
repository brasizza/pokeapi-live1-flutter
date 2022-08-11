import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/app/modules/home/components/pokemon_home.dart';

import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: controller.obx((pokemons) {
        return GridView.builder(
          itemCount: pokemons?.length ?? 0,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (_, index) => PokemonHome(
            pokemon: pokemons![index],
          ),
        );
      },
          onLoading: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          onEmpty: Text('SEM POKEMONS'),
          onError: (error) => Container(
                color: Colors.red,
                child: Text(error.toString()),
              )),
    );
  }
}
