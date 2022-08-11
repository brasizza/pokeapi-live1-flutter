import 'package:pokemon/app/data/models/pokemon.dart';

abstract class PokemonListService {
  Future<List<Pokemon>?> getPokemons();
}
