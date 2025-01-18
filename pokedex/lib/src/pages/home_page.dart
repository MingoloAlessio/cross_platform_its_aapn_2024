import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/providers/poke_list_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(pokeListProvider);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Pokedex"),
          actions: [
            IconButton(onPressed: () => ref.invalidate(pokeListProvider), icon: const Icon(Icons.refresh)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: switch (list) {
            AsyncData(:final value) => ListView.separated(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  final pokemon = value[index];
                  return ListTile(
                    onTap: () {},
                    title: Text("${pokemon.id}. ${pokemon.name}"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.save),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            AsyncError() => const Center(
                child: Text("C'è stao un problema"),
              ),
            _ => const Center(
                child: CircularProgressIndicator(),
              )
          },
        ));
  }
}
