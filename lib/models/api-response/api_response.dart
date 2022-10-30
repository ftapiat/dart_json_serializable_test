import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponseModel<T> {
  final String message;
  final String status;
  final T data;

  ApiResponseModel({
    required this.message,
    required this.status,
    required this.data
  });

  factory ApiResponseModel.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
    _$ApiResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$ApiResponseModelToJson(this, toJsonT);
}
