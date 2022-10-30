import 'package:json_annotation/json_annotation.dart';

part 'step.g.dart';

@JsonSerializable()
class Step {
  final int id;
  final String name;
  final String label;
  final int index;

  @JsonKey(name: 'is_relevant')
  final bool isRelevant;

  // Todo agregar Enum faltante

  Step({
    required this.id,
    required this.name,
    required this.label,
    required this.index,
    required this.isRelevant,
  });

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);

  Map<String, dynamic> toJson() => _$StepToJson(this);
}