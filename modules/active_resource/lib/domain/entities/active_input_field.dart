import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_input_field.freezed.dart';

final class ActiveInputField {
  final String key;
  final String title;

  final String placeholder;
  final String description;
  final ActiveInputFieldDataType dataType;

  ActiveInputField({
    required this.key,
    required this.title,
    required this.placeholder,
    required this.description,
    required this.dataType,
  });
}

@freezed
class ActiveInputFieldDataType {
  ActiveInputFieldDataType._();

  factory ActiveInputFieldDataType.shortText() = _ShortText;
  factory ActiveInputFieldDataType.paragraph() = _Paragraph;
  factory ActiveInputFieldDataType.date() = _Date;
  factory ActiveInputFieldDataType.dateTime() = _DateTime;
  factory ActiveInputFieldDataType.integer() = _Integer;
  factory ActiveInputFieldDataType.numeric() = _Numeric;
  factory ActiveInputFieldDataType.email() = _Email;
  factory ActiveInputFieldDataType.url() = _Url;
  factory ActiveInputFieldDataType.textList() = _TextList;
  factory ActiveInputFieldDataType.checkboxOne() = _CheckboxOne;
  factory ActiveInputFieldDataType.checkboxListLiveResource({
    required String activeStructureCode,
    required String titleKey,
    String? subtitleKey,
  }) = _CheckboxListLiveResource;

  factory ActiveInputFieldDataType.selectOneLiveResource({
    required String activeStructureCode,
    required String titleKey,
    String? subtitleKey,
  }) = _SelectOneLiveResource;
  factory ActiveInputFieldDataType.selectListLiveResource({
    required String activeStructureCode,
    required String titleKey,
    String? subtitleKey,
  }) = _SelectListLiveResource;
  factory ActiveInputFieldDataType.selectOneUser({
    required String titleKey,
    String? subtitleKey,
  }) = _SelectOneUser;
  factory ActiveInputFieldDataType.selectUserList({
    required String titleKey,
    String? subtitleKey,
  }) = _SelectUserList;
  factory ActiveInputFieldDataType.checkboxListUser({
    required String titleKey,
    String? subtitleKey,
  }) = _CheckboxListUser;
  factory ActiveInputFieldDataType.unsupported() = _Unsupported;
}
