import 'package:get/get_connect.dart';
import 'package:pokemon/app/core/consts.dart';
import 'package:pokemon/app/data/models/pokemon.dart';

import './pokemon_list_repository.dart';

class PokemonListRepositoryImpl extends GetConnect implements PokemonListRepository {
  @override
  Future<List<Pokemon>?> getPokemons() async {
    String urlApi = Consts.baseUrlApi;
    Response resposta = await get(urlApi);

    if (resposta.isOk) {
      return (resposta.body['results'] as List).map((poke) => Pokemon.fromMap(poke)).toList();
    } else {
      return null;
    }
  }
}
