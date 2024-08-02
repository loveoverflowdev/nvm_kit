import 'package:flutter/material.dart' show Color;
import 'notification_status.dart';
import 'notification_status_script.dart';

class NotificationAction {
  final String id;
  final String? xhrRequestUrl;
  final XhrRequestMethod? xhrRequestMethod;
  final String? browserUrl;
  final String actionName;
  final String actionType;
  final Color color;
  final NotificationStatus status;
  final List<NotificationStatusScript> statusScriptList;

  NotificationAction({
    required this.id,
    required this.browserUrl,
    required this.xhrRequestUrl,
    required this.actionType,
    required this.color,
    required this.status,
    required this.actionName,
    this.xhrRequestMethod,
    this.statusScriptList = const [],
  });
}

enum XhrRequestMethod {
  get,
  post,
  put,
  delete,
  undefined;
}
