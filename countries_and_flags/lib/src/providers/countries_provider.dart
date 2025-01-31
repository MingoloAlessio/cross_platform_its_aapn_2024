import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/notifiers/search_country_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:countries_and_flags/api/country_api.dart';

part 'countries_provider.g.dart';

@riverpod
Future<List<CountryModel>> fetchAllCountries(FetchAllCountriesRef ref) {
  final api = ref.watch(countryApiProvider);
  return api.fetchAll();
}

@riverpod
Future<List<CountryModel>> searchCountries(SearchCountriesRef ref, String query) {
  final api = ref.watch(countryApiProvider);
  if (query.isEmpty) {
    query = ref.watch(searchCountryNotifierProvider);
  }
  return api.searchBy(query);
}
