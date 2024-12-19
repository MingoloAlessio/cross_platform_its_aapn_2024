import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/pokemon_snippet_api_model.dart';
import 'package:pokedex/api/models/snippet_api_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_snippet_api.g.dart';

@riverpod
PokemonSnippetApi pokemonSnippetApi(PokemonSnippetApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return PokemonSnippetApi(client);
}

class PokemonSnippetApi {
  const PokemonSnippetApi(this.client);
  final Dio client;

  Future<List<PokemonSnippetApiModel>> getSnippet() async {
    final result = await client.get<Map<String, dynamic>>('?limit=10000');
    final response = SnippetApiModel.fromJson(result.data!);
    return response.results;
  }
}