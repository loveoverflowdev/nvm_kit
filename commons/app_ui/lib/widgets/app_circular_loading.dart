import 'package:flutter/material.dart';

class AppCircularLoadingWidget extends StatelessWidget {
  const AppCircularLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
