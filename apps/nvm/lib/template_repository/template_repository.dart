import 'package:template_parser/template_parser.dart';

abstract interface class TemplateRepository {
  factory TemplateRepository.example() = _ExampleTemplateRepository;

  TemplateComponent getTemplate();
}

final class _ExampleTemplateRepository implements TemplateRepository {
  _ExampleTemplateRepository();

  @override
  TemplateComponent getTemplate() {
    return TemplateComponent(
      title: 'Task Manager',
      apps: [
        AppComponent(
          appCode: 'task_manager',
          title: 'Task Manager',
          pages: [
            ActivePageComponent(
              contextName: 'tasks',
              title: 'Tasks',
              screenType: '',
              pageActions: [],
              collection: ActiveCollectionComponent(
                tile: ActiveTileComponent(
                  activeStructureCode: 'tasks',
                  titleKey: 'task_name',
                  subtitleKey: 'task_description',
                ),
              ),
              detail: ActiveDetailComponent(
                activeStructureCode: activeStructureCode, 
                titleKey: titleKey, 
                extraKeys: extraKeys,
              ),
            ),
            ActivePageComponent(
              contextName: 'user_stories',
              title: 'User Stories',
              screenType: '',
              pageActions: [],
              collection: ActiveCollectionComponent(
                tile: ActiveTileComponent(
                  activeStructureCode: 'user_stories',
                  titleKey: 'i_want',
                  subtitleKey: 'as_a',
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
