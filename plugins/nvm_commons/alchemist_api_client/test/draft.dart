import 'package:alchemist_api_client/src/request_field.dart';

void main() {
  final RequestField fields1 = RequestField.children(
    [
      RequestField.name('workspaceName'),
      RequestField.name('workspaceCapacity'),
      RequestField(
        name: 'project',
        children: [
          RequestField.name('projectName'),
          RequestField.name('projectCapacity'),
        ],
      ),
    ],
  );

  final RequestField fields2 = RequestField.children(
    [
      RequestField.name('id'),
      RequestField.name('username'),
    ],
  );

  print(fields1.build());
  print(fields2.build());
}
