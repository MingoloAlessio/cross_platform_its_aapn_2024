import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/src/models/snippet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poke_list_provider.g.dart';

@riverpod
FutureOr<List<SnippetModel>> pokeList(PokeListRef ref)async {
  final api = ref.watch(pokemonApiProvider);
  final result = await api.getSnippet();
  
  final models = result.map((value) {
    final urlDiEsempio = value.url;
    final split = urlDiEsempio.split('/');
    final [..., id, _] = split;
    final integer = int.parse(id);

    return SnippetModel(
      id: integer, 
      name: value.name
    );
  });

  return [...models];
}