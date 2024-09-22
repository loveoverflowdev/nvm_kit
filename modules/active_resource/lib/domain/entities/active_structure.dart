import 'package:freezed_annotation/freezed_annotation.dart';

import 'addon_type/addon_type.dart';

part 'active_structure.g.dart';

@JsonSerializable()
final class ActiveStructure {
  final String id;
  final String code;
  final String title;
  final List<ActiveFieldStructure> fields;

  @JsonKey(
    fromJson: _supportedAddonTypesFromJson,
    toJson: _supportedAddonTypesToJson,
  )
  final List<AddonType> supportedAddonTypes;

  bool supportAddonType(bool Function(AddonType type) condition) {
    return supportedAddonTypes.any(condition);
  }

  AddonType? getAddonTypeWhere(bool Function(AddonType type) condition) {
    final index = supportedAddonTypes.indexWhere(condition);
    if (index == -1) return null;
    return supportedAddonTypes[index];
  }

  ActiveStructure({
    required this.id,
    required this.code,
    required this.title,
    required this.fields,
    required this.supportedAddonTypes,
  });

  Map<String, dynamic> toJson() => _$ActiveStructureToJson(this);

  factory ActiveStructure.fromJson(Map<String, dynamic> json) =>
      _$ActiveStructureFromJson(json);
}

List<AddonType> _supportedAddonTypesFromJson(Map<String, dynamic> json) {
  return () sync* {
    for (final entry in json.entries) {
      switch (entry.key) {
        case 'widgetBoardRole':
          if (entry.value != false &&
              entry.value != null &&
              (entry.value['featureFields'] as Iterable?)?.isNotEmpty == true) {
            yield AddonType.rolesBoard(
              configurations: (entry.value['featureFields'] as Iterable).map(
                (e) {
                  return RolesBoardAddonConfiguration(
                    fieldCode: e['featureFieldName'],
                    widgetId: e['widgetId'],
                    type: e['featureType'],
                  );
                },
              ).toList(),
            );
          }
          break;
        case 'widgetComment':
          if (entry.value != false && entry.value != null) {
            yield AddonType.comment();
          }
          break;
      }
    }
  }()
      .toList();
}

Map<String, dynamic> _supportedAddonTypesToJson(List<AddonType> types) {
  final result = <String, dynamic>{};
  for (final type in types) {
    type.when(
      comment: () {
        result['widgetComment'] = true;
      },
      rolesBoard: (configurations) {
        result['widgetBoardRole'] = {
          'featureFields': configurations.map((e) {
            return {
              'featureFieldName': e.fieldCode,
              'widgetId': e.widgetId,
              'featureType': e.type,
            };
          }).toList(),
        };
      },
      unsupported: () => {},
    );
  }
  return result;
}

@JsonSerializable()
final class ActiveFieldStructure {
  final String id;
  final String key;
  final String title;
  final int order;
  final bool isRequired;

  final ActiveFieldDataType type;
  final String placeholder;
  final String description;
  final String valueActiveStructureId;

  // final bool isRequired;
  // final bool isUnique;
  // final bool isMultipleValued;
  // final bool searchable;
  // final bool sortable;
  // final bool filterable;
  // final bool isConcrete;
  // final bool showInExport;
  // final bool showInImport;
  // final dynamic createdBy;
  // final dynamic updatedBy;
  // final dynamic createdAt;
  // final dynamic updatedAt;

  ActiveFieldStructure({
    required this.id,
    required this.key,
    required this.title,
    required this.order,
    required this.type,
    required this.placeholder,
    required this.description,
    required this.valueActiveStructureId,
    required this.isRequired,
    // required this.isRequired,
    // required this.isUnique,
    // required this.isMultipleValued,
    // required this.searchable,
    // required this.sortable,
    // required this.filterable,
    // required this.isConcrete,
    // required this.showInExport,
    // required this.showInImport,
    // required this.createdBy,
    // required this.updatedBy,
    // required this.createdAt,
    // required this.updatedAt,
  });

  Map<String, dynamic> toJson() => _$ActiveFieldStructureToJson(this);

  factory ActiveFieldStructure.fromJson(Map<String, dynamic> json) =>
      _$ActiveFieldStructureFromJson(json);
}

enum ActiveFieldDataType {
  shortText,
  paragraph,
  date,
  dateTime,
  integer,
  numeric,
  email,
  url,
  textList,
  binaryCheckbox,
  multiActiveResourceCheckbox,
  singleActiveResourceSelection,
  multiResourceSelection,
  singleUserSelection,
  multiUserSelection,
  multiUserCheckbox,
  unsupported;

  factory ActiveFieldDataType.fromString(String str) {
    return _map[str] ?? ActiveFieldDataType.unsupported;
  }

  @override
  String toString() {
    return _map.entries.firstWhere((e) => e.value == this).key;
  }

  static const Map<String, ActiveFieldDataType> _map = {
    'SHORT_TEXT': ActiveFieldDataType.shortText,
    'PARAGRAPH': ActiveFieldDataType.paragraph,
    'DATE': ActiveFieldDataType.date,
    'DATETIME': ActiveFieldDataType.dateTime,
    'INTEGER': ActiveFieldDataType.integer,
    'NUMERIC': ActiveFieldDataType.numeric,
    'EMAIL': ActiveFieldDataType.email,
    'URL': ActiveFieldDataType.url,
    'TEXT_LIST': ActiveFieldDataType.textList,
    'CHECKBOX_ONE': ActiveFieldDataType.binaryCheckbox,
    'CHECKBOX_LIST_LIVE_RESOURCE':
        ActiveFieldDataType.multiActiveResourceCheckbox,
    'SELECT_ONE_LIVE_RESOURCE':
        ActiveFieldDataType.singleActiveResourceSelection,
    'SELECT_LIST_LIVE_RESOURCE': ActiveFieldDataType.multiResourceSelection,
    'SELECT_ONE_USER': ActiveFieldDataType.singleUserSelection,
    'SELECT_LIST_USER': ActiveFieldDataType.multiUserSelection,
    'CHECKBOX_LIST_USER': ActiveFieldDataType.multiUserCheckbox,
  };
}

/*
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
*/

/*
SHORT_TEXT, PARAGRAPH, DATE, DATETIME, INTEGER, 
NUMERIC, EMAIL, URL, TEXT_LIST, CHECKBOX_ONE, 
CHECKBOX_LIST_LIVE_RESOURCE, SELECT_ONE_LIVE_RESOURCE, 
SELECT_LIST_LIVE_RESOURCE, SELECT_ONE_USER, 
SELECT_LIST_USER, CHECKBOX_LIST_USER
*/

/*
{
    "data": [
        {
            "id": "657720864086688939",
            "activeFeatures": {
                "widgetBoardRole": {
                    "featureFields": [
                        {
                            "featureFieldName": "assignee",
                            "widgetId": "657763459693282282",
                            "featureType": "WIDGET_BOARD_ROLE"
                        }
                    ],
                    "featureType": "WIDGET_BOARD_ROLE"
                },
                "widgetComment": true
            },
            "activeStructureCode": "tasks",
            "activeStructureTitle": "Task",
            "updatedBy": "0",
            "createdAt": "2024-09-06 16:19:09",
            "updatedAt": null,
            "activeFields": [
                {
                    "id": "657720864149603536",
                    "fieldName": "task_name",
                    "fieldTitle": "Name",
                    "fieldType": "SHORT_TEXT",
                    "valueActiveStructureId": "0",
                    "order": 1,
                    "fieldDescription": "",
                    "fieldPlaceholder": "",
                    "isRequired": false
                },
                {
                    "id": "657720864220905875",
                    "fieldName": "task_description",
                    "fieldTitle": "Description",
                    "fieldType": "PARAGRAPH",
                    "valueActiveStructureId": "0",
                    "order": 2,
                    "fieldDescription": "",
                    "fieldPlaceholder": "",
                    "isRequired": false
                },
                {
                    "id": "664386519691167242",
                    "fieldName": "task_user_story",
                    "fieldTitle": "User story",
                    "fieldType": "SELECT_ONE_LIVE_RESOURCE",
                    "valueActiveStructureId": "657720864694865682",
                    "order": 3,
                    "fieldDescription": "",
                    "fieldPlaceholder": "",
                    "isRequired": false
                },
                {
                    "id": "664720769745422624",
                    "fieldName": "task_interested_users",
                    "fieldTitle": "Interested by",
                    "fieldType": "SELECT_LIST_USER",
                    "valueActiveStructureId": "0",
                    "order": 4,
                    "fieldDescription": "",
                    "fieldPlaceholder": "",
                    "isRequired": false
                }
            ],
            "createdBy": "605303072528270018"
        }
    ],
    "filtering": {
        "activeStructureCode =": "tasks"
    },
    "limit": 1000
}
*/
