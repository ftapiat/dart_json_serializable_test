import 'package:json_annotation/json_annotation.dart';
import '../user/user.dart';

part 'unit.g.dart';

@JsonSerializable()
class Unit {
  final int id;
  final String name;
  final String label;
  final List<User>? users;

  Unit({
    required this.id,
    required this.name,
    required this.label,
    required this.users,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  Map<String, dynamic> toJson() => _$UnitToJson(this);
}
