// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:pokemon/app/data/models/pokemon.dart';
import 'package:pokemon/app/data/services/pokemon_list_service.dart';

class HomeController extends GetxController with StateMixin<List<Pokemon>> {
  final PokemonListService _service;

  HomeController({
    required PokemonListService service,
  }) : _service = service;

  @override
  void onInit() {
    super.onInit();

    try {
      change(null, status: RxStatus.loading());
      _service.getPokemons().then((pokemons) {
        change(pokemons, status: RxStatus.success());
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
