// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      isAdmin: json['is_admin'] as bool,
      rut: json['rut'] as String,
      rutFormatted: json['rut_formatted'] as String,
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String,
      lastName: json['last_name'] as String,
      motherLastName: json['mother_last_name'] as String,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as int?,
      confirmedCitizen: json['confirmed_citizen'] as bool,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'is_admin': instance.isAdmin,
      'rut': instance.rut,
      'rut_formatted': instance.rutFormatted,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'mother_last_name': instance.motherLastName,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'confirmed_citizen': instance.confirmedCitizen,
    };
