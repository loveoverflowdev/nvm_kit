import 'package:alchemist_api_client/clients/alchemist_api_client/request_field.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';

void main() {
  test('test alchemist query: fields: remove duplicate fields', () {
    AlchemistQuery query = AlchemistQuery(
      requestField: RequestField.children([
        RequestField.name('id'),
        RequestField.name('name'),
        RequestField.name('name'),
      ]),
    );

    expect(query.requestField?.build(), 'id,name');
  });

  test('test alchemist query: fields: remove empty fields', () {
    AlchemistQuery query = AlchemistQuery(
        requestField: RequestField.children(
      [
        RequestField.name('id'),
        RequestField.name(''),
        RequestField.name('name'),
      ],
    ));

    expect(query.requestField?.build(), 'id,name');
  });

  test('test alchemist query: fields: serialize', () {
    AlchemistQuery query = AlchemistQuery(
      requestField: RequestField.children(
        [
          RequestField.name('id'),
          RequestField.name('name'),
        ],
      ),
    );

    expect(query.serialize(), {'fields': 'id,name'});
  });
}
