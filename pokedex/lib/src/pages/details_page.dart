import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/providers/poke_details_provider.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage(this.param, {super.key});
  final int param;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(PokeDetailsProvider(param));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: switch(details){
          AsyncData(:final value) => Text("${value.id}. ${value.name}"),
          AsyncError() => const Center(
                child: Text("C'è stao un problema"),
              ),
            _ => const Center(
                child: CircularProgressIndicator(),
              )
        },
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: switch (details) {
            AsyncData(:final value) => Column(
                children: [Image.network(value.image as String)],
              ),
            AsyncError() => const Center(
                child: Text("C'è stao un problema"),
              ),
            _ => const Center(
                child: CircularProgressIndicator(),
              )
          }),
    );
  }
}
