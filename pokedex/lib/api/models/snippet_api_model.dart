import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/api/models/pokemon_snippet_api_model.dart';

part 'snippet_api_model.freezed.dart';
part 'snippet_api_model.g.dart';

@freezed
class SnippetApiModel with _$SnippetApiModel{
  const factory SnippetApiModel({
    required int count,
    required List<PokemonSnippetApiModel> results,
  }) = _SnippetApiModel;
factory SnippetApiModel.fromJson(Map<String, dynamic> json)
=> _$SnippetApiModelFromJson(json);
}