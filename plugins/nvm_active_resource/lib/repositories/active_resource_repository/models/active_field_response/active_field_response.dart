import 'package:json_annotation/json_annotation.dart';

import '../active_resource_creator/active_resource_creator.dart';
import '../active_resource_project_response/active_resource_project_response.dart';

part 'active_field_response.g.dart';

@JsonSerializable()
final class ActiveFieldResponse {
  final String id;
  final Map<String, dynamic> attributes;
  final ActiveResourceProjectResponse project;

  @JsonKey(name: 'createdByUser')
  final ActiveResourceCreator creator;

  ActiveFieldResponse({
    required this.id,
    required this.attributes,
    required this.project,
    required this.creator,
  });

  factory ActiveFieldResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveFieldResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveFieldResponseToJson(this);
}

/*
"id": "644777831968016497",
"fieldName": "type_name",
"order": 1,
"fieldTitle": "Tên loại đơn hàng",
"fieldType": "SHORT_TEXT",
"valueResourceStructureId": "0",
"resourceStructureId": "644777831963821041",
"fieldPlaceholder": "",
"fieldDescription": "",
"isRequired": false,
"isUnique": false,
"isMultipleValued": false,
"searchable": false,
"sortable": false,
"filterable": false,
"isConcrete": false,
"showInExport": false,
"showInImport": false,
"createdBy": "0",
"updatedBy": "0",
"createdAt": null,
"updatedAt": null,
"labelIds": []
*/
