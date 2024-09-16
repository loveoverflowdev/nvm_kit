import 'progress.dart';
import 'role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'roles_board.g.dart';

@JsonSerializable()
final class RolesBoard {
  final String id;
  final String boardName;
  final String description;

  final dynamic createdBy;
  final dynamic createdAt;
  final dynamic updatedBy;
  final dynamic updatedAt;
  final dynamic createdByUser;
  final dynamic updatedByUser;

  final List<Role> roles;
  final List<Progress> progresses;

  RolesBoard({
    required this.id,
    required this.boardName,
    required this.description,
    required this.roles,
    required this.createdBy,
    required this.createdAt,
    required this.updatedBy,
    required this.updatedAt,
    required this.createdByUser,
    required this.updatedByUser,
    required this.progresses,
  });

  factory RolesBoard.fromJson(Map<String, dynamic> json) => _$RolesBoardFromJson(json);
  Map<String, dynamic> toJson() => _$RolesBoardToJson(this);
}
