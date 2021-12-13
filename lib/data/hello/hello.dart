import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'hello.freezed.dart';
part 'hello.g.dart';

@freezed
class HelloResponse with _$HelloResponse {
  const factory HelloResponse(
      {@JsonKey(name: 'message') required String message}) = _HelloResponse;

  factory HelloResponse.fromJson(Map<String, dynamic> json) =>
      _$HelloResponseFromJson(json);
}
