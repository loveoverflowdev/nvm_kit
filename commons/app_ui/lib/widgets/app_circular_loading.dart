import 'package:flutter/material.dart';

class AppCircularLoadingWidget extends StatelessWidget {
  final double size;

  const AppCircularLoadingWidget({super.key, this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
