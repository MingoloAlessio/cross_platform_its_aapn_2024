import 'package:countries_and_flags/api/http_client_provider.dart';
import 'package:countries_and_flags/api/models/country_model_api.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_api.g.dart';

@riverpod
CountryApi countryApi(CountryApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return CountryApi(client);
}

class CountryApi {
  const CountryApi(this.client);
  final Dio client;

  Future<List<CountryModelApi>> fetchAll() async {
    final response = await client.get('/all?fields=name,flags,cca2');
    List<dynamic> data = response.data;
    return data.map((json) => CountryModelApi.fromJson(json)).toList();
  }

  Future<List<CountryModelApi>> searchBy(String query) async {
    if (query.isEmpty) {
      return fetchAll();
    }
    final response = await client.get('/name/$query?fields=name,flags,cca2');
    List<dynamic> data = response.data;
    return data.map((json) => CountryModelApi.fromJson(json)).toList();
  }
}
