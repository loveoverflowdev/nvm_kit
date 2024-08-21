import 'package:alchemist_api_client/clients/alchemist_api_client/request_field.dart';

void main() {
  final RequestField fields1 = RequestField.children(
    [
      RequestField.name('workspaceName'),
      RequestField.name('workspaceCapacity'),
      RequestField(
        name: 'project',
        children: [
          RequestField(
            name: 'user',
            children: [
              RequestField.name('id'),
              RequestField.name('username'),
            ],
          ),
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

  final RequestField fields3 = RequestField.children(
    [
      RequestField.name('id'),
      RequestField.name('username'),
    ],
  );

  print(fields2.addChild(fields3).build());
  print(fields2.build());
}
