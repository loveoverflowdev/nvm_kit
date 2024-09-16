import 'package:flutter/material.dart';
import 'package:roles_board_addon/domain.dart';

import 'views.dart';

final _RolesBoardAddonFactory rolesBoardAddon = _RolesBoardAddonFactory();

final class _RolesBoardAddonFactory {
  RolesBoardAddon call({
    required RolesBoardResourceState resourceState,
  }) => _RolesBoardAddonImpl(resourceState: resourceState);
}

final class _RolesBoardAddonImpl extends RolesBoardAddon {
  final RolesBoardResourceState _resourceState;

  _RolesBoardAddonImpl({
    required RolesBoardResourceState resourceState,
  }) : _resourceState = resourceState;

  @override
  Widget resourceDetailAddonView({
    required String activeStructureCode, 
    required String resourceId,
  }) {
    return RolesBoardResourceStateView(
      rolesBoardResourceState: _resourceState,
    );
  }

  @override
  Widget resourceFormAddonView() {
    return RolesBoardListView();
  }

  @override
  Widget resourceTileAddonIcon() {
    return IconButton(
      onPressed: () {

      }, 
      icon: Icon(Icons.assignment_ind),
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
            "assignedBy": "0",
            "status": "NOT_STARTED",
            "progress": 0
        },
      ],
      "featureType": "WIDGET_BOARD_ROLE"
    }
  }
},
*/