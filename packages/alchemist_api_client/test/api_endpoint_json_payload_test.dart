import 'package:flutter_test/flutter_test.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';

void main() {
  test(
      'ApiEndpoint: when jsonPayload is true: `payload` passed to parseEndpointParams is not null and not Map and not json: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      jsonPayload: true,
    );
    expect(() => apiEndpoint.parseEndpointParams(payload: "not json"),
        throwsA(isA<Exception>()));

    expect(() => apiEndpoint.parseEndpointParams(payload: "null"),
        throwsA(isA<Exception>()));
  });

  test(
      'ApiEndpoint: when jsonPayload is true: `payload` passed to parseEndpointParams is valid Map: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      jsonPayload: true,
    );

    // if payload passed to parseEndpointParams is Map, it must not throw Exception
    expect(() => apiEndpoint.parseEndpointParams(payload: {}),
        isNot(throwsA(anything)));

    expect(
        () =>
            apiEndpoint.parseEndpointParams(payload: {'title': 'lorem ispum'}),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when jsonPayload is true: `payload` passed to parseEndpointParams is valid json string: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      jsonPayload: true,
    );

    expect(() => apiEndpoint.parseEndpointParams(payload: "{}"),
        isNot(throwsA(anything)));

    expect(
        () => apiEndpoint.parseEndpointParams(
            payload: '{"title": "lorem ispum"}'),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when jsonPayload is true: `payload` passed to parseEndpointParams is empty string: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      jsonPayload: true,
    );

    expect(() => apiEndpoint.parseEndpointParams(payload: ""),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when jsonPayload is false: `payload` passed to parseEndpointParams is invalid: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      jsonPayload: false,
    );

    expect(() => apiEndpoint.parseEndpointParams(payload: "{}"),
        isNot(throwsA(anything)));

    expect(
        () => apiEndpoint.parseEndpointParams(
            payload: '{"title": "lorem ispum"}'),
        isNot(throwsA(anything)));

    expect(() => apiEndpoint.parseEndpointParams(payload: "not json"),
        isNot(throwsA(anything)));

    expect(() => apiEndpoint.parseEndpointParams(payload: 123),
        isNot(throwsA(anything)));

    expect(() => apiEndpoint.parseEndpointParams(payload: "null"),
        isNot(throwsA(anything)));
  });
}
