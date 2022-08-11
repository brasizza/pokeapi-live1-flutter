// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:pokemon/app/data/models/pokemon.dart';
import 'package:pokemon/app/data/models/pokemon_detail.dart';
import 'package:pokemon/app/data/services/pokemon_detail_service.dart';

class PokemonDetailController extends GetxController {
  final PokemonDetailServiceList _service;
  PokemonDetailController({
    required PokemonDetailServiceList service,
  }) : _service = service;
  late final Pokemon pokemon;

  final _pokemonDetail = Rxn<PokemonDetail>();
  PokemonDetail? get pokemonDetail => _pokemonDetail.value;
  void addPokemon({required Pokemon pokemon}) {
    this.pokemon = pokemon;
  }

  @override
  void onInit() async {
    super.onInit();
    _service.getPokemonDetail(pokemon: pokemon).then(
          (detail) => _pokemonDetail(detail),
        );
  }
}
