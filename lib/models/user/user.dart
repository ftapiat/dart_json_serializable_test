import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'is_admin')
  final bool isAdmin;
  final String rut;
  @JsonKey(name: 'rut_formatted')
  final String rutFormatted;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'middle_name')
  final String middleName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'mother_last_name')
  final String motherLastName;
  @JsonKey(name: 'full_name')
  final String fullName;
  final String email;
  final int? phone;
  @JsonKey(name: 'confirmed_citizen')
  final bool confirmedCitizen;

  User({
    required this.isAdmin,
    required this.rut,
    required this.rutFormatted,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.motherLastName,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.confirmedCitizen,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
