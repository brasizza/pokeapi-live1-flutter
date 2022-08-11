// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PokemonStat {
  final String statName;
  final int statValue;
  PokemonStat({
    required this.statName,
    required this.statValue,
  });

  PokemonStat copyWith({
    String? statName,
    int? statValue,
  }) {
    return PokemonStat(
      statName: statName ?? this.statName,
      statValue: statValue ?? this.statValue,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statName': statName,
      'statValue': statValue,
    };
  }

  factory PokemonStat.fromMap(Map<String, dynamic> map) {
    return PokemonStat(
      statName: map['stat']['name'] as String,
      statValue: map['base_stat'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonStat.fromJson(String source) => PokemonStat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PokemonStat(statName: $statName, statValue: $statValue)';

  @override
  bool operator ==(covariant PokemonStat other) {
    if (identical(this, other)) return true;

    return other.statName == statName && other.statValue == statValue;
  }

  @override
  int get hashCode => statName.hashCode ^ statValue.hashCode;
}
