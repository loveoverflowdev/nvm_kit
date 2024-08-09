import 'package:flutter_test/flutter_test.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';

void main() {
  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryList: alchemistQuery is not passed to parseEndpointParams: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryList,
    );

    expect(() => apiEndpoint.parseEndpointParams(), throwsA(isA<Exception>()));
  });
  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryList: alchemistQuery passed to parseEndpointParams is null: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryList,
    );

    expect(() => apiEndpoint.parseEndpointParams(alchemistQuery: null),
        throwsA(isA<Exception>()));
  });
  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryList: alchemistQuery is passed to parseEndpointParams: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryList,
    );

    expect(
        () => apiEndpoint.parseEndpointParams(alchemistQuery: AlchemistQuery()),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requestType is RequestType.other: alchemistQuery is not passed to parseEndpointParams: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.other,
    );

    expect(() => apiEndpoint.parseEndpointParams(), isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when requestType is RequestType.other: alchemistQuery passed to parseEndpointParams is null: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.other,
    );

    expect(() => apiEndpoint.parseEndpointParams(alchemistQuery: null),
        isNot(throwsA(anything)));
  });
}
