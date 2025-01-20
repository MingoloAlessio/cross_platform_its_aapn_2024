import 'package:pokedex/src/models/saved_pokemon_model.dart';
import 'package:pokedex/src/models/snippet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_pokemon_notifier.g.dart';

@riverpod
class SavedPokemonNotifier extends _$SavedPokemonNotifier {
  @override
   List<SavedPokemonModel> build() {
    ref.keepAlive();
    return [];
  }

  void addFavourite({
    required SnippetModel snippetModel,
    required String note,
  }) {
    final newfavourite = (
      snippetModel: snippetModel,
      note: note,
    );

    state = [newfavourite,...state];
  }

  void removeFavourite(SavedPokemonModel snippetModel) {
    state = [...state.where((e) => e != snippetModel)];
  }
}