// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PokemonType {
  final String typeName;
  PokemonType({
    required this.typeName,
  });

  PokemonType copyWith({
    String? typeName,
  }) {
    return PokemonType(
      typeName: typeName ?? this.typeName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeName': typeName,
    };
  }

  factory PokemonType.fromMap(Map<String, dynamic> map) {
    return PokemonType(
      typeName: map['type']['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonType.fromJson(String source) => PokemonType.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PokemonType(typeName: $typeName)';

  @override
  bool operator ==(covariant PokemonType other) {
    if (identical(this, other)) return true;

    return other.typeName == typeName;
  }

  @override
  int get hashCode => typeName.hashCode;
}
