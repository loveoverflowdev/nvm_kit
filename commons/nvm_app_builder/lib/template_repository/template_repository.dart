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
      app: AppComponent(
        appCode: 'task_manager',
        title: 'Task Manager',
        pages: [
          ActivePageComponent(
            contextName: 'tasks',
            title: 'Tasks',
            view: ActiveCollectionComponent(
              detailContextName: 'task_detail',
              createFormContextName: 'create_task_form',
              tile: ActiveTileComponent(
                activeStructureCode: 'tasks',
                titleKey: 'task_name',
                subtitleKey: 'task_description',
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
          ActivePageComponent(
            contextName: 'create_task_form',
            title: 'New Task',
            view: ActiveFormComponent(
              activeStructureCode: 'tasks',
            ),
          ),
          ActivePageComponent(
            contextName: 'user_stories',
            title: 'User Stories',
            view: ActiveCollectionComponent(
              detailContextName: 'user_story_detail',
              createFormContextName: 'create_user_story_form',
              tile: ActiveTileComponent(
                activeStructureCode: 'user_stories',
                titleKey: 'i_want',
                subtitleKey: 'as_a',
              ),
            ),
          ),
          ActivePageComponent(
            contextName: 'user_story_detail',
            view: ActiveDetailComponent(
              tile: ActiveTileComponent(
                activeStructureCode: 'user_stories',
                titleKey: 'i_want',
                subtitleKey: 'as_a',
                extraKeys: [],
                // TODO:
              ),
            ),
          ),
          ActivePageComponent(
            contextName: 'create_user_story_form',
            title: 'New User Story',
            view: ActiveFormComponent(
              activeStructureCode: 'user_stories',
            ),
          ),
        ],
      ),
    );
  }
}
