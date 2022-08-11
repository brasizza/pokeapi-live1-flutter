import 'package:flutter/material.dart';
import 'package:pokemon/app/data/models/pokemon_type.dart';

class ListTypes extends StatelessWidget {
  final List<PokemonType>? types;
  const ListTypes({Key? key, this.types}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: types?.length ?? 0,
      itemBuilder: (context, index) {
        final type = types![index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Chip(label: Text(type.typeName)),
        );
      },
    );
  }
}
