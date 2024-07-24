import 'package:alchemist_api_client/alchemist_api_client.dart';

abstract class WorkspaceRequestField {
  static final RequestField id = RequestField.name('id');
  static final RequestField workspaceName = RequestField.name('workspaceName');
  static final RequestField namespace = RequestField.name('namespace');
  static final RequestField ownerId = RequestField.name('ownerId');
  static final RequestField activeMemberIds =
      RequestField.name('activeMemberIds');
  static final RequestField pendingMemberIds =
      RequestField.name('pendingMemberIds');
  static final RequestField createdAt = RequestField.name('createdAt');

  static final RequestField workspaceCapacity =
      RequestField.name('workspaceCapacity');
  static final RequestField member = RequestField.name('member');
  static final RequestField project = RequestField.name('project');
  static final RequestField updatedAt = RequestField.name('updatedAt');
}
