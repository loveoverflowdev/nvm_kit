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
    final typeMapping = {
      ActiveResourceListComponent: ResourceType.activeResourceList.code,
      ActiveResourceTileComponent: ResourceType.activeResourceTile.code,
      NotificationListComponent: ResourceType.notificationList.code,
      NotificationTileComponent: ResourceType.notificationTile.code,
      ProjectListComponent: ResourceType.projectList.code,
      ProjectTileComponent: ResourceType.projectTile.code,
      WorkspaceListComponent: ResourceType.workspaceList.code,
      WorkspaceTileComponent: ResourceType.workspaceTile.code,
      SigninFormComponent: ResourceType.signinForm.code,
      RegisterFormComponent: ResourceType.registerForm.code,
    };

    return typeMapping[this.runtimeType] ?? ResourceType.undefined.code;
  }

  Map<String, dynamic> toJson();

  factory ResourceComponent.fromJson(Map<String, dynamic> json) {
    final resourceType = ResourceType.fromCode(json['type']);
  
    final factoryMapping = {
      ResourceType.activeResourceList: (json) => ActiveResourceListComponent.fromJson(json),
      ResourceType.activeResourceTile: (json) => ActiveResourceTileComponent.fromJson(json),
      ResourceType.notificationList: (json) => NotificationListComponent.fromJson(json),
      ResourceType.notificationTile: (json) => NotificationTileComponent.fromJson(json),
      ResourceType.projectList: (json) => ProjectListComponent.fromJson(json),
      ResourceType.projectTile: (json) => ProjectTileComponent.fromJson(json),
      ResourceType.workspaceList: (json) => WorkspaceListComponent.fromJson(json),
      ResourceType.workspaceTile: (json) => WorkspaceTileComponent.fromJson(json),
      ResourceType.signinForm: (json) => SigninFormComponent.fromJson(json),
      ResourceType.registerForm: (json) => RegisterFormComponent.fromJson(json),
    };

    final factoryFunction = factoryMapping[resourceType];

    if (factoryFunction != null) {
      return factoryFunction(json);
    } else {
      throw UnsupportedError('An unsupported resource type was passed');
    }
  }
}
