import 'package:flutter_test/flutter_test.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';

void main() {
  test('ApiEndpoint: when uriTemplate is empty: Must throw Exception', () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '',
    );

    expect(() => apiEndpoint.parseEndpointParams(), throwsA(isA<Exception>()));
  });

  test(
      'ApiEndpoint: when uriTemplate is not include any param: uriParams passed to parseEndpointParams is not empty: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
    );

    expect(() => apiEndpoint.parseEndpointParams(uriParams: {'id': 1}),
        throwsA(isA<Exception>()));
  });

  // test(
  //     'ApiEndpoint: when uriTemplate is include param: but uriParams passed to parseEndpointParams is empty: Must throw Exception',
  //     () {
  //   ApiEndpoint apiEndpoint = ApiEndpoint(
  //     uriTemplate: '/test/:id',
  //   );

  //   expect(() => apiEndpoint.parseEndpointParams(uriParams: {}),
  //       throwsA(isA<Exception>()));
  // });

  test(
      'ApiEndpoint: when uriTemplate is not include any param: uriParams passed to parseEndpointParams is empty: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
    );

    expect(() => apiEndpoint.parseEndpointParams(uriParams: {}),
        isNot(throwsA(anything)));
  });

  test(
      'ApiEndpoint: when uriTemplate is not include any param: uriParams passed to parseEndpointParams is null: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
    );

    expect(() => apiEndpoint.parseEndpointParams(uriParams: null),
        isNot(throwsA(anything)));
  });
}
