import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/models/pokemon_details_model.dart';
import 'package:pokedex/src/models/snippet_model.dart';
import 'package:pokedex/src/providers/poke_details_provider.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage(this.id, {super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(PokeDetailsProvider(id));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: switch (details) {
          AsyncData(:final value) => Text("${value.id} - ${value.name}"),
          AsyncError() => const Center(
              child: Text("C'è stato un problema: "),
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            )
        },
        actions: [
          SizedBox.square(
            dimension: 32,
            child: switch (details) {
              AsyncData(isLoading: true) => const CircularProgressIndicator(),
              _ => IconButton(
                  onPressed: () {
                    ref.invalidate(PokeDetailsProvider(id));
                  },
                  icon: const Icon(Icons.refresh),
                )
            },
          ),
          IconButton(onPressed: () {
            context.pushNamed(
              'form',
              extra: SnippetModel(id: details.value!.id, name: details.value!.name)
            );
          }, icon: const Icon(Icons.save)),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: switch (details) {
              AsyncData(:final value) => Column(
                  children: [
                    Image.network(value.image),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card.outlined(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text("Peso: ${value.weight} kg"),
                            ),
                          ),
                          Card.outlined(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text("Altezza: ${value.height} kg"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              AsyncError() => const Center(
                  child: Text("C'è stato un problema"),
                ),
              _ => const Center(
                  child: CircularProgressIndicator(),
                )
            },
          )),
    );
  }
}
