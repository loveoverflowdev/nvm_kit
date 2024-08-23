import 'package:flutter/material.dart';

class AppCircularLoading extends StatelessWidget {
  const AppCircularLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
