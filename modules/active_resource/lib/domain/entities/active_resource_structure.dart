final class ActiveResourceStructure {
  final String id;
  final String code;
  final String title;
  final List<ActiveFieldStructure> fields;

  ActiveResourceStructure({
    required this.id,
    required this.code,
    required this.title,
    required this.fields,
  });
}

final class ActiveFieldStructure {
  final String id;
  final String key;
  final String title;
  final int order;
  final dynamic type;
  final String placeholder;
  final String description;
  final bool isRequired;
  final bool isUnique;
  final bool isMultipleValued;
  final bool searchable;
  final bool sortable;
  final bool filterable;
  final bool isConcrete;
  final bool showInExport;
  final bool showInImport;
  final dynamic createdBy;
  final dynamic updatedBy;
  final dynamic createdAt;
  final dynamic updatedAt;

  ActiveFieldStructure({
    required this.id,
    required this.key,
    required this.title,
    required this.order,
    required this.type,
    required this.placeholder,
    required this.description,
    required this.isRequired,
    required this.isUnique,
    required this.isMultipleValued,
    required this.searchable,
    required this.sortable,
    required this.filterable,
    required this.isConcrete,
    required this.showInExport,
    required this.showInImport,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });
}
