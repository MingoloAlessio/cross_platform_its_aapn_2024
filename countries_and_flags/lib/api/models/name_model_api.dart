import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'name_model_api.freezed.dart';
part 'name_model_api.g.dart';

@freezed
class NameModelApi with _$NameModelApi{
  const factory NameModelApi({
    required String common,
    required String official,
  }) = _NameModelApi;
factory NameModelApi.fromJson(Map<String, dynamic> json)
=> _$NameModelApiFromJson(json);
}