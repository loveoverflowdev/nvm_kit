import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nvm_kit/nvm_kit.dart' show AppTemplate, TemplateParser;

import '../router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'First Template',
        routerConfig: parseRouter(_firstAppTemplate()),
        themeMode: ThemeMode.light,
      ),
    );
  }
}

AppTemplate _firstAppTemplate() {
  return TemplateParser.parseJsonString('''
    {
    "appCode": "HERA",
    "index": "ProjectHomeScreen",
    "screens": {
      "ProjectHomeScreen": {
        "screenType": "ElementBuilder",
        "theme": "",
        "requiredAuth": true,
        "render": [
          {
            "widget": "appbar",
            "title": "My Day",
            "actions": []
          },
          {
            "widget": "ActiveResourceListView",
            "title": "Task List",
            "resrouceStructId": "8723876386745678",
            "tileDataStruct": {
              "title": {
                "activeFieldId": "239478346737685678",
                "goto": "TaskDetailScreen"
              },
              "bottomTagList": {
                "activeFieldId": "3489589745745232347",
                "goto": "NoWhere",
                "widget": {
                  "widget": "BoardRoleWidgetListView"
                }
              }
            }
          }
        ]
      },
      "ActiveResourceListView": {
        "requiredAuth": true,
        "render": [
          {
            "layout": "fattyness_board",
            "align": "center",
            "height": 150,
            "type": "TEXT",
            "content": "Hello type screen"
          }
        ]
      }
    }
  }

    ''');
}
