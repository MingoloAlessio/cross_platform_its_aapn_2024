import 'package:countries_and_flags/src/notifiers/saved_countries_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritesPage extends ConsumerWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(savedCountriesNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favourites'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final country = list[index];
                  return ListTile(
                    title: Text("${country.cca2} - ${country.name.common}"),
                    trailing: IconButton(
                      onPressed: () {
                        ref.read(savedCountriesNotifierProvider.notifier).remove(country);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
        )
    );
  }
}