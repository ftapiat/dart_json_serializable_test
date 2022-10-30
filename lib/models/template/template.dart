import '../step/step.dart';
import 'package:json_annotation/json_annotation.dart';

part 'template.g.dart';

@JsonSerializable()
class Template {
  final int id;
  final String name;
  final String label;
  final List<Step> steps;

  Template({
    required this.id,
    required this.name,
    required this.label,
    required this.steps,
  });

  factory Template.fromJson(Map<String, dynamic> json) => _$TemplateFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateToJson(this);
}