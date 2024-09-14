import 'package:json_annotation/json_annotation.dart';

import '../active_resource_creator_response.dart';
import '../addons.dart';

part 'active_resource_response.g.dart';

@JsonSerializable()
final class ActiveResourceResponse {
  final String id;
  final Map<String, dynamic>? liveAttributes;
  final String? projectId;

  @JsonKey(name: 'createdByUser')
  final ActiveResourceCreatorResponse? creator;

  @JsonKey(name: 'liveFeatures', fromJson: _addonListFromJson)
  final List<AddonResponse> addons;

  ActiveResourceResponse({
    required this.id,
    required this.liveAttributes,
    this.projectId,
    this.creator,
    this.addons = const [],
  });

  factory ActiveResourceResponse.fromJson(Map<String, dynamic> json) {
    return _$ActiveResourceResponseFromJson(json);
  }

  static List<AddonResponse> _addonListFromJson(Map<String, dynamic> json) {
    return json.entries
        .map(
          (entry) => AddonResponse.fromJson(entry.value),
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
