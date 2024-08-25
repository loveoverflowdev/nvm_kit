import 'package:flutter_test/flutter_test.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';

void main() {
  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryOne: alchemistQuery is not passed to parseEndpointParams: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryOne,
    );

    expect(() => apiEndpoint.parseEndpointParams(), throwsA(isA<Exception>()));
  });
  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryOne: alchemistQuery passed to parseEndpointParams is null: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryOne,
    );

    expect(() => apiEndpoint.parseEndpointParams(alchemistQuery: null),
        throwsA(isA<Exception>()));
  });

  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryOne: alchemistQuery with any other param than fields passed to parseEndpointParams: Must throw Exception',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryOne,
    );

    // search is not valid param for alchemistQueryOne
    expect(
        () => apiEndpoint.parseEndpointParams(
            alchemistQuery: AlchemistQuery(search: 'lorem')),
        throwsA(isA<Exception>()));

    // filtering is not valid param for alchemistQueryOne
    expect(
        () => apiEndpoint.parseEndpointParams(
            alchemistQuery: AlchemistQuery(filtering: {'title': 'lorem'})),
        throwsA(isA<Exception>()));

    // sorting is not valid param for alchemistQueryOne
    expect(
        () => apiEndpoint.parseEndpointParams(
            alchemistQuery: AlchemistQuery(orderBy: {'title': 'asc'})),
        throwsA(isA<Exception>()));
    // pagination is not valid param for alchemistQueryOne
    expect(
        () => apiEndpoint.parseEndpointParams(
            alchemistQuery: AlchemistQuery(limit: 1, offset: 1)),
        throwsA(isA<Exception>()));
  });
  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryOne: alchemistQuery with fields param passed to parseEndpointParams: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryOne,
    );

    expect(
        () => apiEndpoint.parseEndpointParams(
              alchemistQuery: AlchemistQuery(
                requestField: 'title,description',
                // requestField: RequestField.children(
                //   [
                //     RequestField.name('title'),
                //     RequestField.name('description'),
                //   ],
                // ),
              ),
            ),
        isNot(throwsA(anything)));
  });
  test(
      'ApiEndpoint: when requestType is RequestType.alchemistQueryOne: alchemistQuery is passed to parseEndpointParams: Must not throw any thing',
      () {
    ApiEndpoint apiEndpoint = ApiEndpoint(
      uriTemplate: '/test',
      requestType: RequestType.alchemistQueryOne,
    );

    expect(
        () => apiEndpoint.parseEndpointParams(alchemistQuery: AlchemistQuery()),
        isNot(throwsA(anything)));
  });
}
