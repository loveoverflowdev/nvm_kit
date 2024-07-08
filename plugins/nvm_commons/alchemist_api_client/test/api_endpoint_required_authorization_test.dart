import 'package:flutter_test/flutter_test.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';

void main() {
  test(
      'ApiEndpoint: when requiredAuthorization is true: authorization is not passed to parseEndpointParams: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredAuthorization: true,
    );

    expect(() => apiEndpoint.parseEndpointParams(), throwsA(isA<Exception>()));
  });
  test(
      'ApiEndpoint: when requiredAuthorization is true: authorization passed to parseEndpointParams is empty: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredAuthorization: true,
    );

    expect(() => apiEndpoint.parseEndpointParams(authorization: ''),
        throwsA(isA<Exception>()));
  });
  test(
      'ApiEndpoint: when requiredAuthorization is true: authorization passed to parseEndpointParams is null: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredAuthorization: true,
    );

    expect(() => apiEndpoint.parseEndpointParams(authorization: null),
        throwsA(isA<Exception>()));
  });

  test(
      'ApiEndpoint: when requiredAuthorization is true: authorization passed to parseEndpointParams is valid string token: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredAuthorization: true,
    );

    expect(() => apiEndpoint.parseEndpointParams(authorization: 'token'),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requiredAuthorization is false: authorization is not passed to parseEndpointParams: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredAuthorization: false,
    );

    expect(() => apiEndpoint.parseEndpointParams(), isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requiredAuthorization is false: authorization passed to parseEndpointParams is empty: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredAuthorization: false,
    );

    expect(() => apiEndpoint.parseEndpointParams(authorization: ''),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requiredAuthorization is false: authorization passed to parseEndpointParams is null: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requiredAuthorization: false,
    );

    expect(() => apiEndpoint.parseEndpointParams(authorization: null),
        isNot(throwsA(anything)));
  });
}
