import 'package:template_parser/template_parser.dart';

enum ResourceType {
  activeResourceList,
  activeResourceTile,
  notificationList,
  notificationTile,
  projectList,
  projectTile,
  workspaceList,
  workspaceTile,
  signinForm,
  registerForm,
  undefined;

  String get code {
    return switch (this) {
      activeResourceList => 'active_resource_list',
      activeResourceTile => 'active_resource_tile',
      notificationTile => 'notification_tile',
      notificationList => 'notification_list',
      projectList => 'project_list',
      projectTile => 'project_tile',
      workspaceTile => 'workspace_tile',
      workspaceList => 'workspace_list',
      signinForm => 'signin_form',
      registerForm => 'register_form',
      undefined => 'undefined',
    };
  }

  factory ResourceType.fromCode(String code) {
    for (final type in ResourceType.values) {
      if (code == type.code) {
        return type;
      }
    }
    return ResourceType.undefined;
  }
}

abstract class ResourceComponent implements Component {
  ResourceComponent();

  String get type {
    if (this is ActiveResourceListComponent) {
      return ResourceType.activeResourceList.code;
    }
    if (this is ActiveResourceTileComponent) {
      return ResourceType.activeResourceTile.code;
    }
    if (this is NotificationListComponent) {
      return ResourceType.notificationList.code;
    }
    if (this is NotificationTileComponent) {
      return ResourceType.notificationTile.code;
    }
    if (this is ProjectListComponent) {
      return ResourceType.projectList.code;
    }
    if (this is ProjectTileComponent) {
      return ResourceType.projectTile.code;
    }
    if (this is WorkspaceListComponent) {
      return ResourceType.workspaceList.code;
    }
    if (this is WorkspaceTileComponent) {
      return ResourceType.workspaceTile.code;
    }
    if (this is SigninFormComponent) {
      return ResourceType.signinForm.code;
    }
    if (this is RegisterFormComponent) {
      return ResourceType.registerForm.code;
    }
    return ResourceType.undefined.code;
  }

  Map<String, dynamic> toJson();

  factory ResourceComponent.fromJson(Map<String, dynamic> json) {
    final resourceType = ResourceType.fromCode(json['type']);
    switch (resourceType) {
      case ResourceType.activeResourceList:
        return ActiveResourceListComponent.fromJson(json);
      case ResourceType.activeResourceTile:
        return ActiveResourceTileComponent.fromJson(json);
      case ResourceType.notificationList:
        return NotificationListComponent.fromJson(json);
      case ResourceType.notificationTile:
        return NotificationTileComponent.fromJson(json);
      case ResourceType.projectList:
        return ProjectListComponent.fromJson(json);
      case ResourceType.projectTile:
        return ProjectTileComponent.fromJson(json);
      case ResourceType.workspaceList:
        return WorkspaceListComponent.fromJson(json);
      case ResourceType.workspaceTile:
        return WorkspaceTileComponent.fromJson(json);
      case ResourceType.signinForm:
        return SigninFormComponent.fromJson(json);
      case ResourceType.registerForm:
        return RegisterFormComponent.fromJson(json);
      case ResourceType.undefined:
        throw UnsupportedError('An unsupport resource type was passed');
    }
  }
}
