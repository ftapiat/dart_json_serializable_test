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
      status: json['status'] as String,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$ApiResponseModelToJson<T>(
  ApiResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': toJsonT(instance.data),
    };
