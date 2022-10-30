import '../unit/unit.dart';
import './days-type-to-count/days_type_to_count.dart';
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
  @JsonKey(name: 'days_type_to_count')
  final DaysTypeToCount? daysTypeToCount;
  @JsonKey(name: 'unit_in_charge')
  final Unit unitInCharge;

  Step({
    required this.id,
    required this.name,
    required this.label,
    required this.index,
    required this.isRelevant,
    required this.daysTypeToCount,
    required this.unitInCharge,
  });

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);

  Map<String, dynamic> toJson() => _$StepToJson(this);
}