import 'package:template_parser/core.dart';

import '../view_types.dart';

abstract class ViewComponent implements Component {
  String get type => switch (runtimeType) {
        const (ActiveCollectionComponent) => 'ActiveCollectionComponent',
        const (ActiveDetailComponent) => 'ActiveDetailComponent',
        const (ActiveFormComponent) => 'ActiveFormComponent',
        // Add more cases as needed
        _ => 'Unknown', // Default case for unexpected types
      };
}
