import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final Object exception;
  final StackTrace? stackTrace;

  AppErrorWidget(this.exception, {
    super.key,
    this.stackTrace,
  });

  @override
  Widget build(BuildContext context) {
    return ErrorWidget.withDetails(
      message: exception.toString(),
      error: stackTrace != null ? FlutterError(stackTrace.toString()) : null,
    );
  }
}
