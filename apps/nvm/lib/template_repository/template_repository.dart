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
              view: ActiveCollectionComponent(
                tile: ActiveTileComponent(
                  activeStructureCode: 'tasks',
                  titleKey: 'task_name',
                  subtitleKey: 'task_description',
                ),
              ),
            ),
            ActivePageComponent(
              contextName: 'user_stories',
              title: 'User Stories',
              view: ActiveCollectionComponent(
                tile: ActiveTileComponent(
                  activeStructureCode: 'user_stories',
                  titleKey: 'i_want',
                  subtitleKey: 'as_a',
                ),
              ),
            ),
            ActivePageComponent(
              contextName: 'task_detail',
              view: ActiveDetailComponent(
                tile: ActiveTileComponent(
                  activeStructureCode: 'tasks',
                  titleKey: 'task_name',
                  subtitleKey: 'task_description',
                  // TODO:
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
