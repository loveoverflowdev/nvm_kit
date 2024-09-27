import 'package:json_annotation/json_annotation.dart';

import '../active_resource_creator_response.dart';
import '../addons.dart';

part 'active_resource_response.g.dart';

@JsonSerializable()
final class ActiveResourceResponse {
  final String id;
  final Map<String, dynamic>? primaryAttributes;
  final String? projectId;

  @JsonKey(name: 'createdByUser')
  final ActiveResourceCreatorResponse? creator;

  @JsonKey(
      name: 'liveFeatures', fromJson: _addonListFromJson, includeToJson: false)
  final List<AddonResourceStateResponse> addonAttributes;

  ActiveResourceResponse({
    required this.id,
    required this.primaryAttributes,
    this.projectId,
    this.creator,
    this.addonAttributes = const [],
  });

  factory ActiveResourceResponse.fromJson(Map<String, dynamic> json) {
    return _$ActiveResourceResponseFromJson(json);
  }

  static List<AddonResourceStateResponse> _addonListFromJson(Map<String, dynamic> json) {
    return json.entries
        .map(
          (entry) => AddonResourceStateResponse.fromEntry(entry),
        )
        .toList();
  }
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
