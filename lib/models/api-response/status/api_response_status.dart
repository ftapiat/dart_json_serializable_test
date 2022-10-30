import 'package:json_annotation/json_annotation.dart';

enum ApiResponseStatus {
  @JsonValue('OK')
  ok,
  @JsonValue('Error')
  error,
}
