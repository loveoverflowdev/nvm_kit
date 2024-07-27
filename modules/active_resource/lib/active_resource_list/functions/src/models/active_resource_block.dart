class ActiveResourceBlock {
  final String id;
  final String attributes;
  final String project;
  final String creator;

  ActiveResourceBlock({
    String? id,
    String? attributes,
    String? project,
    String? creator,
  })  : id = id ?? '',
        attributes = attributes ?? '',
        project = project ?? '',
        creator = creator ?? '';
}

/*
ActiveResourceResponse({
    required this.id,
    required this.attributes,
    required this.project,
    required this.creator,
  });
*/