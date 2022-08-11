// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pokemon/app/data/models/pokemon.dart';
import 'package:pokemon/app/data/repositories/pokemon_list_repository.dart';

import './pokemon_list_service.dart';

class PokemonListServiceImpl implements PokemonListService {
  final PokemonListRepository _repository;
  PokemonListServiceImpl({
    required PokemonListRepository repository,
  }) : _repository = repository;

  @override
  Future<List<Pokemon>?> getPokemons() async {
    return await _repository.getPokemons();
  }
}
