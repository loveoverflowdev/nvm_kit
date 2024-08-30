import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final Object exception;
  final StackTrace? stackTrace;

  AppErrorWidget(
    this.exception, {
    super.key,
    this.stackTrace,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(AppSpacing.lg),
        color: Colors.red.shade900,
        child: Column(
          children: [
            Text(
              exception.toString(),
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              height: AppSpacing.lg,
            ),
            if (stackTrace != null)
              Flexible(
                child: Text(stackTrace.toString(),
                    style: TextStyle(
                      color: Colors.yellow,
                    )),
              )
          ],
        ),
      ),
    );
  }
}
