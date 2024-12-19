import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'snippet_model.freezed.dart';
part 'snippet_model.g.dart';

@freezed
class SnippetModel with _$SnippetModel{
  const factory SnippetModel({
    required int id,
    required String name,
  }) = _SnippetModel;
factory SnippetModel.fromJson(Map<String, dynamic> json)
=> _$SnippetModelFromJson(json);
}