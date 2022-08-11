import 'package:get/get.dart';
import 'package:pokemon/app/data/repositories/pokemon_detail_repository.dart';
import 'package:pokemon/app/data/repositories/pokemon_detail_repository_impl.dart';
import 'package:pokemon/app/data/services/pokemon_detail_service.dart';
import 'package:pokemon/app/data/services/pokemon_detail_service_impl.dart';

import './pokemon_detail_controller.dart';

class PokemonDetailBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PokemonDetailRepository>(() => PokemonDetailRepositoryImpl());
    Get.lazyPut<PokemonDetailServiceList>(() => PokemonDetailServiceListImpl(repository: Get.find()));

    Get.put(PokemonDetailController(service: Get.find())..addPokemon(pokemon: Get.arguments['pokemon']));
  }
}
