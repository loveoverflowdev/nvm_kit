import 'package:template_parser/core.dart';
import '../view_types.dart';

@JsonConvert
abstract class ActiveViewComponent implements Component {
  late final String type = switch (runtimeType) {
    const (ActiveCollectionComponent) => 'ActiveCollectionComponent',
    const (ActiveDetailComponent) => 'ActiveDetailComponent',
    const (ActiveFormComponent) => 'ActiveFormComponent',
    // Add more cases as needed
    _ => 'Unknown', // Default case for unexpected types
  };

  ActiveViewComponent fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'ActiveCollectionComponent' => ActiveCollectionComponent.fromJson(json),
      'ActiveDetailComponent' => ActiveDetailComponent.fromJson(json),
      'ActiveFormComponent' => ActiveFormComponent.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }

  Map<String, dynamic> toJson() {
    return switch (type) {
      'ActiveCollectionComponent' => toJson(),
      'ActiveDetailComponent' => toJson(),
      'ActiveFormComponent' => toJson(),
      _ => throw UnimplementedError(),
    };
  }
}
