import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/models/form_model.dart';
import 'package:pokedex/src/models/snippet_model.dart';
import 'package:pokedex/src/providers/saved_pokemon_notifier.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FormPage extends ConsumerWidget {
  const FormPage(this.snippetModel, {super.key});
  final SnippetModel snippetModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(formModelProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Salva e annota"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card.outlined(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 352,
                ),
                child: Text(
                  "${snippetModel.id} - ${snippetModel.name}",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 240),
              child: ReactiveForm(
                  formGroup: form,
                  child: Column(
                    children: [
                      ReactiveTextField<String>(
                        decoration: const InputDecoration(
                          hintText: 'La tua nota',
                          labelText: 'Scrivi la tua nota',
                        ),
                        formControlName: 'note',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ReactiveFormConsumer(
                        builder: (context, formGroup, child) =>
                            ElevatedButton.icon(
                          onPressed: formGroup.valid
                              ? () {
                                  final note = formGroup.control('note').value;
                                  ref
                                      .read(
                                          savedPokemonNotifierProvider.notifier)
                                      .addFavourite(
                                        snippetModel: snippetModel,
                                        note: note,
                                      );
                                  context.pop(); 
                                }
                              : null, 
                          icon: const Icon(Icons.save),
                          label: const Text('Salva nota'),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
