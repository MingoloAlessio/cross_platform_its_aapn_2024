import 'package:countries_and_flags/src/notifiers/saved_countries_notifier.dart';
import 'package:countries_and_flags/src/notifiers/search_country_notifier.dart';
import 'package:countries_and_flags/src/providers/countries_provider.dart';
import 'package:countries_and_flags/src/providers/search_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(searchFormProvider);
    final countries = ref.watch(
        searchCountriesProvider(ref.read(searchCountryNotifierProvider)));
    final saved = ref.watch(savedCountriesNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Countries and Flags'),
        actions: [
          IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                context.pushNamed('favourites');
              }),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ReactiveForm(
              formGroup: form,
              child: ReactiveTextField(
                formControlName: 'country',
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
                onSubmitted: (control) {
                  final country = form.control('country').value;
                  ref
                      .read(searchCountryNotifierProvider.notifier)
                      .update(country);
                },
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                switch (countries) {
                  AsyncData(:final value) => Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        children: [
                          for (final c in value)
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/details', arguments: c);
                              },
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 4,
                                    top: 4,
                                    child: IconButton(
                                      onPressed: () {
                                        saved.contains(c)
                                            ? ref
                                                .read(
                                                    savedCountriesNotifierProvider
                                                        .notifier)
                                                .remove(c)
                                            : ref
                                                .read(
                                                    savedCountriesNotifierProvider
                                                        .notifier)
                                                .add(c);
                                      },
                                      icon: saved.contains(c)
                                          ? const Icon(Icons.bookmark_remove)
                                          : const Icon(Icons.bookmark_add),
                                    ),
                                  ),
                                  Card(
                                    child: Column(
                                      children: [
                                        Image.network(c.flags.png),
                                        Text(c.name.common),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  AsyncError() => const Center(child: Text("Errore")),
                  _ => const CircularProgressIndicator(),
                }
              ],
            ),
          )
        ],
      ),
    );
  }
}
