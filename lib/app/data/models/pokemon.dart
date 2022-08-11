// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pokemon/app/core/consts.dart';

class Pokemon {
  final String pokemonName;
  final String pokemonImage;
  final String pokemonDetailPage;
  Pokemon({
    required this.pokemonName,
    required this.pokemonImage,
    required this.pokemonDetailPage,
  });

  Pokemon copyWith({
    String? pokemonName,
    String? pokemonImage,
    String? pokemonDetailPage,
  }) {
    return Pokemon(
      pokemonName: pokemonName ?? this.pokemonName,
      pokemonImage: pokemonImage ?? this.pokemonImage,
      pokemonDetailPage: pokemonDetailPage ?? this.pokemonDetailPage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pokemonName': pokemonName,
      'pokemonImage': pokemonImage,
      'pokemonDetailPage': pokemonDetailPage,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    final List<String> url = map['url'].split('/');

    String urlImagem = "${Consts.urlImagemPokemon}${url[6]}.png";

    return Pokemon(
      pokemonName: map['name'] as String,
      pokemonImage: urlImagem,
      pokemonDetailPage: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) => Pokemon.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Pokemon(pokemonName: $pokemonName, pokemonImage: $pokemonImage, pokemonDetailPage: $pokemonDetailPage)';

  @override
  bool operator ==(covariant Pokemon other) {
    if (identical(this, other)) return true;

    return other.pokemonName == pokemonName && other.pokemonImage == pokemonImage && other.pokemonDetailPage == pokemonDetailPage;
  }

  @override
  int get hashCode => pokemonName.hashCode ^ pokemonImage.hashCode ^ pokemonDetailPage.hashCode;
}
