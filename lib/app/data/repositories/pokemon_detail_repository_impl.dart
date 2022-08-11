import 'package:get/get_connect.dart';
import 'package:pokemon/app/data/models/pokemon.dart';
import 'package:pokemon/app/data/models/pokemon_detail.dart';

import './pokemon_detail_repository.dart';

class PokemonDetailRepositoryImpl extends GetConnect implements PokemonDetailRepository {
  @override
  Future<PokemonDetail?> getPokemonDetail({required Pokemon pokemon}) async {
    String urlDetail = pokemon.pokemonDetailPage;

    Response response = await get(urlDetail);

    if (response.isOk) {
      return PokemonDetail.fromMap(response.body);
    }
    return null;
  }
}
