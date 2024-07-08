// ignore_for_file: public_member_api_docs, sort_constructors_first
class ActiveFieldBlock {
  final String id;
  final String? fieldName;
  final int? order;
  final String? fieldTitle;
  final FieldType? fieldType;
  final String? valueResourceStructureId;
  final String? resourceStructureId;
  final String? fieldPlaceholder;
  final String? fieldDescription;
  final bool? isRequired;
  final bool? isUnique;
  final bool? isMultipleValued;
  final bool? searchable;
  final bool? sortable;
  final bool? filterable;
  final bool? isConcrete;
  final bool? showInExport;
  final bool? showInImport;
  final String? createdBy;
  final String? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<String>? labelIds;

  ActiveFieldBlock({
    required this.id,
    this.fieldName,
    this.order,
    this.fieldTitle,
    this.fieldType,
    this.valueResourceStructureId,
    this.resourceStructureId,
    this.fieldPlaceholder,
    this.fieldDescription,
    this.isRequired,
    this.isUnique,
    this.isMultipleValued,
    this.searchable,
    this.sortable,
    this.filterable,
    this.isConcrete,
    this.showInExport,
    this.showInImport,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.labelIds,
  });
}

enum FieldType {
  shortText,
}


/*
{
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
}
*/
