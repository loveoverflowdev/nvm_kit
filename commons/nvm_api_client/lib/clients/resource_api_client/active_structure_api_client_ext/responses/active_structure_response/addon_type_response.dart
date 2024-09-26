import 'package:freezed_annotation/freezed_annotation.dart';

part 'addon_type_response.freezed.dart';

@freezed
class AddonTypeResponse with _$AddonTypeResponse {
  AddonTypeResponse._();

  factory AddonTypeResponse.comment() = _Comment;
  factory AddonTypeResponse.rolesBoard({
    required List<RolesBoardAddonConfiguration> configurations,
  }) = _RolesBoard;
  factory AddonTypeResponse.unsupported() = _Unsupported;
}

class RolesBoardAddonConfiguration {
  final String fieldCode;
  final String addonId;
  final String type;

  RolesBoardAddonConfiguration({
    required this.fieldCode,
    required this.addonId,
    required this.type,
  });
}
