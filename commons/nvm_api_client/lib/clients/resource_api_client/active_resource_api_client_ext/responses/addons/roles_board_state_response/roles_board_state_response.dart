import 'package:json_annotation/json_annotation.dart';

import '../addon_response.dart';

part 'roles_board_state_response.g.dart';

@JsonSerializable()
class RolesBoardStateResponse extends AddonResponse {
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final String typeCode;
  final String widgetBoardRoleId;
  final double averageProgress;

  @JsonKey(fromJson: ProgressStatusResponse.fromJson, toJson: ProgressStatusResponse.toJson)
  final ProgressStatusResponse finalStatus;

  @JsonKey(name: 'widgetRoles')
  final List<RoleStateResponse> roles;

  RolesBoardStateResponse({
    required this.widgetBoardRoleId,
    required this.averageProgress,
    required this.finalStatus,
    required this.roles,
  });

  factory RolesBoardStateResponse.fromEntry(MapEntry<String, dynamic> entry) {
    final json = entry.value as Map<String, dynamic>;
    final instance = _$RolesBoardStateResponseFromJson(json);
    instance.typeCode = entry.key;
    return instance;
  }

  Map<String, dynamic> toJson() {
    return {
      this.typeCode: _$RolesBoardStateResponseToJson(this)
    };
  }

  @override
  AddonFeatureType get type => AddonFeatureType.rolesBoard;
}

@JsonSerializable()
class RoleStateResponse {
  @JsonKey(name: 'widgetRoleId')
  final String id;

  @JsonKey(name: 'assignedBy')
  final String? assignedToUserId;

  @JsonKey(fromJson: ProgressStatusResponse.fromJson, toJson: ProgressStatusResponse.toJson)
  final ProgressStatusResponse status;
  final double progress;

  RoleStateResponse({
    required this.id,
    required this.assignedToUserId,
    required this.status,
    required this.progress,
  });

  factory RoleStateResponse.fromJson(Map<String, dynamic> json) =>
      _$RoleStateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RoleStateResponseToJson(this);
}

enum ProgressStatusResponse {
  notStarted('NOT_STARTED'),
  inProgress('IN_PROGRESS'),
  completed('COMPLETED');

  final String raw;
  const ProgressStatusResponse(this.raw);

  static String toJson(ProgressStatusResponse status) {
    return status.toString();
  }

  factory ProgressStatusResponse.fromJson(String raw) {
    for (final e in ProgressStatusResponse.values) {
      if (e.raw == raw) {
        return e;
      }
    }
    throw Exception('Progress status not found: $raw');
  }

  @override
  String toString() {
    return raw;
  }
}

/*
  "widgetBoardRoleId": "657763459693282282",
  "averageProgress": 0,
  "finalStatus": "NOT_STARTED",
  "widgetRoles": [
      {
          "widgetRoleId": "664886483190025000",
          "assignedBy": "0",
          "status": "NOT_STARTED",
          "progress": 0
      },
  ]
*/
