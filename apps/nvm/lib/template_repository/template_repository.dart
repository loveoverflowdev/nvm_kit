import 'package:template_parser/template_parser.dart';

abstract interface class TemplateRepository {
  factory TemplateRepository.example() = _ExampleTemplateRepository;

  Future<TemplateComponent> getTemplate();
}

final class _ExampleTemplateRepository implements TemplateRepository {
  @override
  Future<TemplateComponent> getTemplate() async {
    return TemplateComponent(
      title: 'title',
      apps: [
        AppComponent(
          appCode: 'tasks',
          index: 'tasks',
          title: 'Tasks',
          pages: [
            PageComponent(
              contextName: 'tasks',
              title: 'Tasks',
              requiredAuth: true,
              screenType: '',
              pageStates: [],
              pageActions: [],
            ),
          ],
        ),
      ],
    );
  }
}
