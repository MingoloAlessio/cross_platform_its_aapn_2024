import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage(CountryModel country, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Recupero i dati passati come argomento
    final country = ModalRoute.of(context)?.settings.arguments as CountryModel?;

    if (country == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Errore')),
        body: const Center(child: Text('Dati paese non disponibili')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(country.name.common),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(country.flags.png, height: 100),
            Text(country.name.common),
            Text(country.cca2),
          ],
        ),
      ),
    );
  }
}
