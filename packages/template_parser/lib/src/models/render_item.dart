final class RenderItem {
  final String? widget;
  final String? title;
  final List<dynamic>? actions;
  final String? resourceStructId;
  final TileDataStruct? tileDataStruct;
  final String? layout;
  final String? align;
  final double? height;
  final String? type;
  final String? content;

  RenderItem({
    this.widget,
    this.title,
    this.actions,
    this.resourceStructId,
    this.tileDataStruct,
    this.layout,
    this.align,
    this.height,
    this.type,
    this.content,
  });

  factory RenderItem.fromJson(Map<String, dynamic> json) {
    return RenderItem(
      widget: json['widget'],
      title: json['title'],
      actions:
          json['actions'] != null ? List<dynamic>.from(json['actions']) : null,
      resourceStructId: json['resrouceStructId'],
      tileDataStruct: json['tileDataStruct'] != null
          ? TileDataStruct.fromJson(json['tileDataStruct'])
          : null,
      layout: json['layout'],
      align: json['align'],
      height: json['height']?.toDouble(),
      type: json['type'],
      content: json['content'],
    );
  }
}

class TileDataStruct {
  final TileDataField? title;
  final TileDataField? bottomTagList;

  TileDataStruct({
    this.title,
    this.bottomTagList,
  });

  factory TileDataStruct.fromJson(Map<String, dynamic> json) {
    return TileDataStruct(
      title:
          json['title'] != null ? TileDataField.fromJson(json['title']) : null,
      bottomTagList: json['bottomTagList'] != null
          ? TileDataField.fromJson(json['bottomTagList'])
          : null,
    );
  }
}

class TileDataField {
  final String activeFieldId;
  final String goto;
  final RenderItem? widget;

  TileDataField({
    required this.activeFieldId,
    required this.goto,
    this.widget,
  });

  factory TileDataField.fromJson(Map<String, dynamic> json) {
    return TileDataField(
      activeFieldId: json['activeFieldId'],
      goto: json['goto'],
      widget:
          json['widget'] != null ? RenderItem.fromJson(json['widget']) : null,
    );
  }
}
