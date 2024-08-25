import 'package:alchemist_query/alchemist_query.dart';

final class UserRequestField {
  static final RequestField id = RequestField.name('id');
  static final RequestField username = RequestField.name('username');
  static final RequestField fullName = RequestField.name('fullName');
  static final RequestField email = RequestField.name('email');
  static final RequestField phone = RequestField.name('phone');
  static final RequestField createdAt = RequestField.name('createdAt');
  static final RequestField updatedAt = RequestField.name('updatedAt');

  static final RequestField all = RequestField.children(
    [
      id,
      username,
      fullName,
      email,
      phone,
      createdAt,
      updatedAt,
    ],
  );
}
