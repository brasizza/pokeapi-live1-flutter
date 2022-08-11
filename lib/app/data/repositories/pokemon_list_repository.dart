import 'package:pokemon/app/data/models/pokemon.dart';

abstract class PokemonListRepository {
  Future<List<Pokemon>?> getPokemons();
}
