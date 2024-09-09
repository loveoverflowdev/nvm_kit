import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_structure.g.dart';

enum AddonType { comment, rolesBoard }

@JsonSerializable()
final class ActiveStructure {
  final String id;
  final String code;
  final String title;
  final List<ActiveField> fields;
  final List<AddonType> supportedAddonTypes;

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

@JsonSerializable()
final class ActiveField {
  final String id;
  final String key;
  final String title;
  final int order;

  final ActiveFieldDataType type;
  final String placeholder;
  final String description;
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

  ActiveField({
    required this.id,
    required this.key,
    required this.title,
    required this.order,
    required this.type,
    required this.placeholder,
    required this.description,
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

  Map<String, dynamic> toJson() => _$ActiveFieldToJson(this);

  factory ActiveField.fromJson(Map<String, dynamic> json) =>
      _$ActiveFieldFromJson(json);
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
  checkboxOne,
  checkboxListLiveResource,
  selectOneLiveResource,
  selectListLiveResource,
  selectOneUser,
  selectListUser,
  checkboxListUser,
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
    'CHECKBOX_ONE': ActiveFieldDataType.checkboxOne,
    'CHECKBOX_LIST_LIVE_RESOURCE': ActiveFieldDataType.checkboxListLiveResource,
    'SELECT_ONE_LIVE_RESOURCE': ActiveFieldDataType.selectOneLiveResource,
    'SELECT_LIST_LIVE_RESOURCE': ActiveFieldDataType.selectListLiveResource,
    'SELECT_ONE_USER': ActiveFieldDataType.selectOneUser,
    'SELECT_LIST_USER': ActiveFieldDataType.selectListUser,
    'CHECKBOX_LIST_USER': ActiveFieldDataType.checkboxListUser,
  };
}


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
