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
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.agriculture)
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: switch (list){
          AsyncData(:final value) => ListView(
            children: [
              for(final pokemon in value)
                Card.outlined(
                  child:Padding(
                    padding: const EdgeInsets.all(8),
                    child:  Row(
                    children: [
                      Text("${pokemon.id}. ${pokemon.name}"),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.save)
                      )
                    ],
                  ),
                  )
                )
            ],
          ),
          AsyncError() => const Center(
              child: Text("C'è stao un problema"),
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            )
        },
      )
    );
  }
}