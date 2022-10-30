import 'package:json_annotation/json_annotation.dart';
import '../template/template.dart';
import '../unit/unit.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final Template template;
  final List<Unit> units;

  Data({
    required this.template,
    required this.units,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
