import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_input_field_specification.freezed.dart';

final class ActiveInputFieldSpecification {
  final String key;
  final String title;
  final String projectId;

  final String placeholder;
  final String description;
  final bool isRequired;
  final ActiveInputFieldDataType dataType;

  ActiveInputFieldSpecification({
    required this.key,
    required this.title,
    required this.placeholder,
    required this.description,
    required this.dataType,
    required this.isRequired,
    required this.projectId,
  });
}

@freezed
class ActiveInputFieldDataType with _$ActiveInputFieldDataType {
  ActiveInputFieldDataType._();

  bool isUndefinedValue(dynamic value) {
    return when(
      shortText: () => value == null || value.isEmpty,
      paragraph: () => value == null || value.isEmpty,
      date: () => value == null,
      dateTime: () => value == null,
      integer: () => value == null,
      numeric: () => value == null,
      email: () => value == null || value.isEmpty,
      url: () => value == null || value.isEmpty,
      textList: () => value == null || value.isEmpty,
      binaryCheckbox: () => value == null,
      multiActiveResourceCheckbox: (_, __, ___) =>
          value == null || value == '0',
      singleActiveResourceSelection: (_, __, ___) =>
          value == null || value == '0',
      multiActiveResourceSelection: (_, __, ___) =>
          value == null || value == '0',
      singleUserSelection: (_, __) => value == null || value == '0',
      multiUserSelection: (_, __) => value == null || value == '0',
      multiUserCheckbox: (_, __) => value == null || value == '0',
      unsupported: () => value == null,
    );
  }

  factory ActiveInputFieldDataType.shortText() = _ShortText;
  factory ActiveInputFieldDataType.paragraph() = _Paragraph;
  factory ActiveInputFieldDataType.date() = _Date;
  factory ActiveInputFieldDataType.dateTime() = _DateTime;
  factory ActiveInputFieldDataType.integer() = _Integer;
  factory ActiveInputFieldDataType.numeric() = _Numeric;
  factory ActiveInputFieldDataType.email() = _Email;
  factory ActiveInputFieldDataType.url() = _Url;
  factory ActiveInputFieldDataType.textList() = _TextList;
  factory ActiveInputFieldDataType.binaryCheckbox() = _BinaryCheckbox;
  factory ActiveInputFieldDataType.multiActiveResourceCheckbox({
    required String activeStructureCode,
    required String titleKey,
    String? subtitleKey,
  }) = _MultiActiveResourceCheckbox;

  factory ActiveInputFieldDataType.singleActiveResourceSelection({
    required String activeStructureCode,
    required String titleKey,
    String? subtitleKey,
  }) = _SingleActiveResourceSelection;

  factory ActiveInputFieldDataType.multiActiveResourceSelection({
    required String activeStructureCode,
    required String titleKey,
    String? subtitleKey,
  }) = _MultiActiveResourceSelection;

  factory ActiveInputFieldDataType.singleUserSelection({
    required String titleKey,
    String? subtitleKey,
  }) = _SingleUserSelection;
  factory ActiveInputFieldDataType.multiUserSelection({
    required String titleKey,
    String? subtitleKey,
  }) = _MultiUserSelection;
  factory ActiveInputFieldDataType.multiUserCheckbox({
    required String titleKey,
    String? subtitleKey,
  }) = _MultiUserCheckbox;
  factory ActiveInputFieldDataType.unsupported() = _Unsupported;
}
