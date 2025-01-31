import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_country_notifier.g.dart';

@riverpod
class SearchCountryNotifier extends _$SearchCountryNotifier {
  @override
  String build() {
    return '';
  }

  void update (String country) {
    state = country;
  }
}