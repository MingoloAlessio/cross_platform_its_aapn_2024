import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_countries_notifier.g.dart';

@riverpod
class SavedCountriesNotifier extends _$SavedCountriesNotifier {
  @override
   List<CountryModel> build() {
    return [];
  }

  void add(CountryModel model) {
    state = [
      model,
      ...state,
    ];
  }

  void remove(CountryModel model) {
    state = [
      ...state.where(
        (element) => element != model,
      ),
    ];
  }
}