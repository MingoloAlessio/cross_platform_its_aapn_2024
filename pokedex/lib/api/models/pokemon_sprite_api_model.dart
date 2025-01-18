import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pokemon_sprite_api_model.freezed.dart';
part 'pokemon_sprite_api_model.g.dart';

@freezed
class PokemonSpriteApiModel with _$PokemonSpriteApiModel{
  const factory PokemonSpriteApiModel({
    required String frontDefault,
  }) = _PokemonSpriteApiModel;
factory PokemonSpriteApiModel.fromJson(Map<String, dynamic> json)
=> _$PokemonSpriteApiModelFromJson(json);
}