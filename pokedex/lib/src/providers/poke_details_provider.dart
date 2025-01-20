import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/src/models/pokemon_details_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poke_details_provider.g.dart';

@riverpod
FutureOr<PokemonDetailsModel> pokeDetails(PokeDetailsRef ref,int id) async{
  final api = ref.watch(pokemonApiProvider);
  final model = await api.getDetails(id);
  return model;
}