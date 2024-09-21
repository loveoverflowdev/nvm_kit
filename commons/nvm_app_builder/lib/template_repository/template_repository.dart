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
            contextName: 'task_list',
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
              primaryTile: ActiveTileComponent(
                activeStructureCode: 'tasks',
                titleKey: 'task_name',
                subtitleKey: 'task_description',
              ),
              refTileList: [
                ActiveRefsTileComponent(
                  fieldTitle: 'User Story',
                  fieldCode: 'task_user_story',
                  activeStructureCode: 'user_stories',
                  titleKey: 'as_a',
                  subtitleKey: 'i_want',
                ),
              ],
            ),
          ),
          ActivePageComponent(
            contextName: 'create_task_form',
            title: 'New Task',
            view: ActiveFormComponent(
              activeStructureCode: 'tasks',
              inputFields: [
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'task_name',
                ),
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'task_description',
                ),
                ActiveInputFieldComponent.activeResourcesSelection(
                  fieldCode: 'task_user_story',
                  titleKey: 'as_a',
                  subtitleKey: 'i_want',
                  activeStructureCode: 'user_stories',
                ),
              ],
              listViewContextName: 'task_list',
            ),
          ),
          ActivePageComponent(
            contextName: 'user_story_list',
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
              primaryTile: ActiveTileComponent(
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
              listViewContextName: 'user_story_list',
              activeStructureCode: 'user_stories',
              inputFields: [
                // ActiveInputFieldComponent.primitive(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
