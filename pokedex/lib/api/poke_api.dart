import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/pokemon_details_api_model.dart';
import 'package:pokedex/api/models/snippet_api_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poke_api.g.dart';

@riverpod
PokemonApi pokemonApi(PokemonApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return PokemonApi(client);
}

class PokemonApi {
  const PokemonApi(this.client);
  final Dio client;

  Future<PokemonDetailsApiModel> getDetails(int id) async {
    final result = await client.get('/api/v2/pokemon/$id');
    final response = PokemonDetailsApiModel.fromJson(result.data);
    return response;
  }

  Future<SnippetApiModel> getSnippet() async {
    final result = await client.get('/api/v2/pokemon?limit=1302');
    final response = SnippetApiModel.fromJson(result.data);
    return response;
  }
}
