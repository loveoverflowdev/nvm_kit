import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../resource_components.dart';

part 'app_component.g.dart';

@JsonSerializable()
final class AppComponent implements Component {
  final String appCode;
  final String title;
  late final List<ActivePageComponent> pages;

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final List<ActivePageComponent> collectionTypePages;

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final List<ActivePageComponent> detailTypePages;

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final List<ActivePageComponent> updateFormTypePages;

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final List<ActivePageComponent> createFormTypePages;

  AppComponent({
    required this.appCode,
    required final List<ActivePageComponent> pages,
    required this.title,
  }) {
    this.pages = List.from(pages, growable: false);

    collectionTypePages = List.from(
      pages
          .where(
            (e) => e.view is ActiveCollectionComponent,
          )
          .toList(),
      growable: false,
    );
    detailTypePages = List.from(
      pages
          .where(
            (e) => e.view is ActiveDetailComponent,
          )
          .toList(),
      growable: false,
    );
    updateFormTypePages = List.from(
      pages
          .where(
            (e) => e.view is ActiveUpdateFormComponent,
          )
          .toList(),
      growable: false,
    );
    createFormTypePages = List.from(
      pages
          .where(
            (e) => e.view is ActiveCreateFormComponent,
          )
          .toList(),
      growable: false,
    );
  }

  factory AppComponent.fromJson(Map<String, dynamic> json) =>
      _$AppComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AppComponentToJson(this);
}
