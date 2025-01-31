import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_form_provider.g.dart';

@riverpod
FormGroup searchForm(SearchFormRef ref) {
  final form = FormGroup({
    'country': FormControl<String>(),
  });
  return form;
}