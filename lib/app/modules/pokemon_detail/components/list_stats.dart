import 'package:flutter/material.dart';
import 'package:pokemon/app/data/models/pokemon_stat.dart';

class ListStats extends StatelessWidget {
  final List<PokemonStat>? stats;

  const ListStats({Key? key, this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stats?.length ?? 0,
      itemBuilder: (context, index) {
        final stat = stats![index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Chip(
              label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(stat.statName),
              Text(
                '(${stat.statValue})',
                style: const TextStyle(color: Colors.green),
              ),
            ],
          )),
        );
      },
    );
  }
}
