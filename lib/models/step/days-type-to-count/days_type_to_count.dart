import 'package:json_annotation/json_annotation.dart';

enum DaysTypeToCount {
  @JsonValue('business')
  business,
  @JsonValue('correlative')
  correlative,
}
