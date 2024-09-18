import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_input_field_specification.freezed.dart';

final class ActiveInputFieldSpecification {
  final String key;
  final String title;
  final String projectId;

  final String placeholder;
  final String description;
  final ActiveInputFieldDataType dataType;

  ActiveInputFieldSpecification({
    required this.key,
    required this.title,
    required this.placeholder,
    required this.description,
    required this.dataType,
    required this.projectId,
  });
}

@freezed
class ActiveInputFieldDataType with _$ActiveInputFieldDataType {
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
