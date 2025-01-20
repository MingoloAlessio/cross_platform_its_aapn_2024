import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/providers/saved_pokemon_notifier.dart';

class FavouritesPage extends ConsumerWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(savedPokemonNotifierProvider);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Pokemon salvati"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final pokemon = list[index];
                  return ListTile(
                    title: Text("${pokemon.snippetModel.id} - ${pokemon.snippetModel.name}"),
                    subtitle: Text(pokemon.note),
                    trailing: IconButton(
                      onPressed: () {
                        ref.read(savedPokemonNotifierProvider.notifier).removeFavourite(pokemon);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
        ));
  }
}
