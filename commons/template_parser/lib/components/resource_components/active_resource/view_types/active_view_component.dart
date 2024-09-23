import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';
import '../view_types.dart';

abstract class ActiveViewComponent implements Component {
  late final String type = switch (runtimeType) {
    const (ActiveCollectionComponent) => 'ActiveCollectionComponent',
    const (ActiveDetailComponent) => 'ActiveDetailComponent',
    const (ActiveCreateFormComponent) => 'ActiveFormComponent',
    // Add more cases as needed
    _ => 'Unknown', // Default case for unexpected types
  };
}

final class ActiveViewComponentConverter
    implements JsonConverter<ActiveViewComponent, Map<String, dynamic>> {
  const ActiveViewComponentConverter();

  @override
  ActiveViewComponent fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'ActiveCollectionComponent' => ActiveCollectionComponent.fromJson(json),
      'ActiveDetailComponent' => ActiveDetailComponent.fromJson(json),
      'ActiveCreateFormComponent' => ActiveCreateFormComponent.fromJson(json),
      'ActiveUpdateFormComponent' => ActiveUpdateFormComponent.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }

  @override
  Map<String, dynamic> toJson(ActiveViewComponent object) {
    return switch (object.type) {
      'ActiveCollectionComponent' =>
        (object as ActiveCollectionComponent).toJson(),
      'ActiveDetailComponent' => (object as ActiveDetailComponent).toJson(),
      'ActiveCreateFormComponent' => (object as ActiveCreateFormComponent).toJson(),
      'ActiveUpdateFormComponent' =>
        (object as ActiveUpdateFormComponent).toJson(),
      _ => throw UnimplementedError(),
    };
  }
}
