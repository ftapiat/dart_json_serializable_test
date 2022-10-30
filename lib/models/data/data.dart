import 'package:json_annotation/json_annotation.dart';
import 'package:dart_json_coverter_test/models/template/template.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final Template template;

  Data({required this.template});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}