// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Step _$StepFromJson(Map<String, dynamic> json) => Step(
      id: json['id'] as int,
      name: json['name'] as String,
      label: json['label'] as String,
      index: json['index'] as int,
      isRelevant: json['is_relevant'] as bool,
      daysTypeToCount: $enumDecodeNullable(
          _$DaysTypeToCountEnumMap, json['days_type_to_count']),
      unitInCharge:
          Unit.fromJson(json['unit_in_charge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StepToJson(Step instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'label': instance.label,
      'index': instance.index,
      'is_relevant': instance.isRelevant,
      'days_type_to_count': _$DaysTypeToCountEnumMap[instance.daysTypeToCount],
      'unit_in_charge': instance.unitInCharge.toJson(),
    };

const _$DaysTypeToCountEnumMap = {
  DaysTypeToCount.business: 'business',
  DaysTypeToCount.correlative: 'correlative',
};
