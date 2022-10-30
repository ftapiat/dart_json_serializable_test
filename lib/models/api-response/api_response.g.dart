// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseModel<T> _$ApiResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseModel<T>(
      message: json['message'] as String,
      status: $enumDecode(_$ApiResponseStatusEnumMap, json['status']),
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$ApiResponseModelToJson<T>(
  ApiResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'status': _$ApiResponseStatusEnumMap[instance.status]!,
      'data': toJsonT(instance.data),
    };

const _$ApiResponseStatusEnumMap = {
  ApiResponseStatus.ok: 'OK',
  ApiResponseStatus.error: 'Error',
};
