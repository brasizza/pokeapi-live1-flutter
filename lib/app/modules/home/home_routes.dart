import 'package:get/route_manager.dart';
import 'package:pokemon/app/modules/home/home_bindings.dart';
import 'package:pokemon/app/modules/home/home_page.dart';
import 'package:pokemon/app/modules/pokemon_detail/pokemon_detail_bindings.dart';
import 'package:pokemon/app/modules/pokemon_detail/pokemon_detail_page.dart';

class HomeRoutes {
  static final pages = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: '/detailPokemon',
      page: () => const PokemonDetailPage(),
      binding: PokemonDetailBindings(),
    ),
  ];
}
