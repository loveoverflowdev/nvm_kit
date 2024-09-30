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
              updateFormContextName: 'update_task_form',
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
              updateFormContextName: 'update_task_form',
            ),
          ),
          ActivePageComponent(
            contextName: 'create_task_form',
            title: 'New Task',
            view: ActiveCreateFormComponent(
              activeStructureCode: 'tasks',
              listViewContextName: 'task_list',
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
            ),
          ),
          ActivePageComponent(
            contextName: 'update_task_form',
            title: 'Update Task',
            view: ActiveUpdateFormComponent(
              activeStructureCode: 'tasks',
              listViewContextName: 'task_list',
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
            ),
          ),
          ActivePageComponent(
            contextName: 'user_story_list',
            title: 'User Stories',
            view: ActiveCollectionComponent(
              detailContextName: 'user_story_detail',
              createFormContextName: 'create_user_story_form',
              updateFormContextName: 'update_user_story_form',
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
                extraKeys: [
                  'so_that',
                  'acceptance_criteria',
                ],
                // TODO:
              ),
              updateFormContextName: 'update_user_story_form',
            ),
          ),
          ActivePageComponent(
            contextName: 'create_user_story_form',
            title: 'New User Story',
            view: ActiveCreateFormComponent(
              listViewContextName: 'user_story_list',
              activeStructureCode: 'user_stories',
              inputFields: [
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'as_a',
                ),
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'i_want',
                ),
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'so_that',
                ),
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'acceptance_criteria',
                ),
              ],
            ),
          ),
          ActivePageComponent(
            contextName: 'update_user_story_form',
            title: 'Update User Story',
            view: ActiveUpdateFormComponent(
              listViewContextName: 'user_story_list',
              activeStructureCode: 'user_stories',
              inputFields: [
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'as_a',
                ),
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'i_want',
                ),
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'so_that',
                ),
                ActiveInputFieldComponent.primitive(
                  fieldCode: 'acceptance_criteria',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
