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
            PageComponent(
              contextName: 'tasks',
              title: 'Tasks',
              screenType: '',
              pageActions: [],
              pageResources: [
                ActiveResourceListComponent(
                  tile: ActiveResourceTileComponent(
                    activeStructureId: '',
                  ),
                ),
              ],
            ),
            PageComponent(
              contextName: 'user_stories',
              title: 'User Stories',
              screenType: '',
              pageActions: [],
              pageResources: [],
            ),
          ],
        )
      ],
    );
  }
}
