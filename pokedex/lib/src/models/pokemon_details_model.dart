import 'package:pokedex/api/models/pokemon_details_api_model.dart';

typedef PokemonDetailsModel = PokemonDetailsApiModel;

extension PokemonDetailsModelImage on PokemonDetailsModel {
  String get image => sprites.frontDefault;
}