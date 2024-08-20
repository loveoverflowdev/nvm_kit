import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  final String id;

  const ProjectPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project'),
      ),
      body: const Center(
        child: Text('Project'),
      ),
    );
  }
}
