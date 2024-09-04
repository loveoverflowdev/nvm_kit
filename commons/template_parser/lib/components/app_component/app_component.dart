import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../resource_components.dart';

part 'app_component.g.dart';

@JsonSerializable()
final class AppComponent implements Component {
  final String appCode;
  final String title;
  late final List<ActivePageComponent> pages;

  @JsonKey(includeFromJson: true, includeToJson: false)
  late final List<ActivePageComponent> collectionTypePages;

  AppComponent({
    required this.appCode,
    required final List<ActivePageComponent> pages,
    required this.title,
  }) {
    this.pages = List.from(pages, growable: false);

    this.collectionTypePages = List.from(pages.where(
      (e) => e.view is ActiveCollectionComponent,
    ).toList(), growable: false);
  }

  factory AppComponent.fromJson(Map<String, dynamic> json) =>
      _$AppComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AppComponentToJson(this);
}

/*
"appCode": "HERA",
  "index": "ProjectHomeScreen",
  "screens"
*/
