import 'package:formz/formz.dart';

enum CommentContentValidationError {
  empty;

  String get message {
    switch (this) {
      // TODO: Localize
      case CommentContentValidationError.empty:
        return 'Comment cannot be empty';
    }
  }
}

class CommentContent extends FormzInput<String, CommentContentValidationError> {
  const CommentContent.pure() : super.pure('');
  const CommentContent.dirty([super.value = '']) : super.dirty();

  @override
  CommentContentValidationError? validator(String value) {
    if (value.isEmpty) return CommentContentValidationError.empty;
    return null;
  }
}
