import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/pokemon_details_api_model.dart';
import 'package:pokedex/api/models/pokemon_snippet_api_model.dart';
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

  Future<PokemonDetailsApiModel> getDetails({required int id}) async {
    final result = await client.get<Map<String, dynamic>>('/$id');
    final response = PokemonDetailsApiModel.fromJson(result.data!);
    return response;
  }

  Future<List<PokemonSnippetApiModel>> getSnippet() async {
    final result = await client.get<Map<String, dynamic>>('?limit=10000');
    final response = SnippetApiModel.fromJson(result.data!);
    return response.results;
  }
}
