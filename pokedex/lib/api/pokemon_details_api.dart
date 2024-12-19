import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/pokemon_details_api_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_details_api.g.dart';

@riverpod
PokemonDetailsApi pokemonDetailsApi(PokemonDetailsApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return PokemonDetailsApi(client);
}

class PokemonDetailsApi {
  const PokemonDetailsApi(this.client);
  final Dio client;

  Future<PokemonDetailsApiModel> getDetails({required int id}) async {
    final result = await client.get<Map<String, dynamic>>('/$id');
    final response = PokemonDetailsApiModel.fromJson(result.data!);
    return response;
  }
}