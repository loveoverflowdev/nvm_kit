import 'package:flutter/material.dart';
import 'package:roles_board_addon/domain.dart';

import 'views.dart';

final RolesBoardAddonFactory rolesBoardAddon = RolesBoardAddonFactory();

final class RolesBoardAddonFactory {
  RolesBoardAddon call({
    required RolesBoardResourceState resourceState,
    required String addonInstanceCode,
  }) =>
      _RolesBoardAddonImpl(
        resourceState: resourceState,
        addonInstanceCode: addonInstanceCode,
      );
}

final class _RolesBoardAddonImpl extends RolesBoardAddon {
  final RolesBoardResourceState _resourceState;
  final String _addonInstanceCode;

  _RolesBoardAddonImpl({
    required RolesBoardResourceState resourceState,
    required String addonInstanceCode,
  })  : _resourceState = resourceState,
        _addonInstanceCode = addonInstanceCode;

  @override
  Widget resourceDetailAddonView({
    required String activeStructureCode,
    required String resourceId,
  }) {
    return RolesBoardResourceStatePreview(
      rolesBoardResourceState: _resourceState,
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      addonInstanceCode: _addonInstanceCode,
    );
  }

  @override
  Widget resourceFormAddonView() {
    return const RolesBoardListView();
  }

  @override
  Widget resourceTileAddonIcon() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.assignment_ind),
    );
  }
}

/*
"liveFeatures": {
    "assignee": {
      "widgetBoardRoleId": "657763459693282282",
      "averageProgress": 0,
      "finalStatus": "NOT_STARTED",
      "widgetRoles": [
        {
            "widgetRoleId": "664886483190025000",
            "assignedTo": "0",
            "status": "NOT_STARTED",
            "progress": 0
        },
      ],
      "featureType": "WIDGET_BOARD_ROLE"
    }
  }
},
*/
