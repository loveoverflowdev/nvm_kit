import 'package:flutter_test/flutter_test.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';

void main() {
  test(
      'ApiEndpoint: when requiredWorkspace is true: uriTemplate not include workspace_id: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredWorkspace: true,
    );

    expect(
        () =>
            apiEndpoint.parseEndpointParams(workspaceId: '8273462837465728345'),
        throwsA(isA<Exception>()));
  });

  test(
      'ApiEndpoint: when requiredWorkspace is true: workspaceId passed to parseEndpointParams() is valid: endpointParams.uri is include workspaceId',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test/:workspace_id',
      requiredWorkspace: true,
    );

    var endpointParams =
        apiEndpoint.parseEndpointParams(workspaceId: '8273462837465728345');

    expect(endpointParams.uri, equals('/test/8273462837465728345'));
  });
  test(
      'ApiEndpoint: when requiredWorkspace is true: workspaceId passed to parseEndpointParams() is valid integer: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test/:workspace_id',
      requiredWorkspace: true,
    );

    expect(
        () =>
            apiEndpoint.parseEndpointParams(workspaceId: '8273462837465728345'),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requiredWorkspace is false: workspaceId is not passed to parseEndpointParams: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredWorkspace: false,
    );

    expect(() => apiEndpoint.parseEndpointParams(), isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requiredWorkspace is false: workspaceId passed to parseEndpointParams is empty: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredWorkspace: false,
    );

    expect(
        () =>
            apiEndpoint.parseEndpointParams(workspaceId: '8273462837465728345'),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requiredWorkspace is false: workspaceId passed to parseEndpointParams is null: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredWorkspace: false,
    );

    expect(() => apiEndpoint.parseEndpointParams(workspaceId: null),
        isNot(throwsA(anything)));
  });
}
