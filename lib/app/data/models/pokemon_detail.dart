// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:pokemon/app/data/models/pokemon_stat.dart';
import 'package:pokemon/app/data/models/pokemon_type.dart';

class PokemonDetail {
  String pokemonName;
  int weight;
  List<PokemonStat>? pokemonStats;
  List<PokemonType>? pokemonTypes;
  PokemonDetail({
    required this.pokemonName,
    required this.weight,
    this.pokemonStats,
    this.pokemonTypes,
  });

  PokemonDetail copyWith({
    String? pokemonName,
    int? weight,
    List<PokemonStat>? pokemonStats,
    List<PokemonType>? pokemonTypes,
  }) {
    return PokemonDetail(
      pokemonName: pokemonName ?? this.pokemonName,
      weight: weight ?? this.weight,
      pokemonStats: pokemonStats ?? this.pokemonStats,
      pokemonTypes: pokemonTypes ?? this.pokemonTypes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pokemonName': pokemonName,
      'weight': weight,
      'pokemonStats': pokemonStats?.map((x) => x.toMap()).toList(),
      'pokemonTypes': pokemonTypes?.map((x) => x.toMap()).toList(),
    };
  }

  factory PokemonDetail.fromMap(Map<String, dynamic> map) {
    return PokemonDetail(
      pokemonName: map['name'] as String,
      weight: map['weight'] as int,
      pokemonStats: map['stats'] != null ? (map['stats'] as List).map((stat) => PokemonStat.fromMap(stat)).toList() : null,
      pokemonTypes: map['types'] != null ? (map['types'] as List).map((stat) => PokemonType.fromMap(stat)).toList() : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonDetail.fromJson(String source) => PokemonDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PokemonDetail(pokemonName: $pokemonName, weight: $weight, pokemonStats: $pokemonStats, pokemonTypes: $pokemonTypes)';
  }

  @override
  bool operator ==(covariant PokemonDetail other) {
    if (identical(this, other)) return true;

    return other.pokemonName == pokemonName && other.weight == weight && listEquals(other.pokemonStats, pokemonStats) && listEquals(other.pokemonTypes, pokemonTypes);
  }

  @override
  int get hashCode {
    return pokemonName.hashCode ^ weight.hashCode ^ pokemonStats.hashCode ^ pokemonTypes.hashCode;
  }
}
