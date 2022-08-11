// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pokemon/app/data/models/pokemon.dart';
import 'package:pokemon/app/data/models/pokemon_detail.dart';
import 'package:pokemon/app/data/repositories/pokemon_detail_repository.dart';

import 'pokemon_detail_service.dart';

class PokemonDetailServiceListImpl implements PokemonDetailServiceList {
  final PokemonDetailRepository _repository;
  PokemonDetailServiceListImpl({
    required PokemonDetailRepository repository,
  }) : _repository = repository;

  @override
  Future<PokemonDetail?> getPokemonDetail({required Pokemon pokemon}) async {
    return await _repository.getPokemonDetail(pokemon: pokemon);
  }
}
