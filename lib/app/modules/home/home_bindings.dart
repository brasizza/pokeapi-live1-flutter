import 'package:get/get.dart';
import 'package:pokemon/app/data/repositories/pokemon_list_repository.dart';
import 'package:pokemon/app/data/repositories/pokemon_list_repository_impl.dart';
import 'package:pokemon/app/data/services/pokemon_list_service.dart';
import 'package:pokemon/app/data/services/pokemon_list_service_impl.dart';

import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PokemonListRepository>(() => PokemonListRepositoryImpl());
    Get.lazyPut<PokemonListService>(() => PokemonListServiceImpl(repository: Get.find()));

    Get.put(HomeController(service: Get.find()));
  }
}
