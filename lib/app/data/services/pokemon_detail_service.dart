import 'package:pokemon/app/data/models/pokemon.dart';
import 'package:pokemon/app/data/models/pokemon_detail.dart';

abstract class PokemonDetailServiceList {
  Future<PokemonDetail?> getPokemonDetail({required Pokemon pokemon});
}
