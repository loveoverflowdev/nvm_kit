import 'package:flutter/foundation.dart';

class Project {
  final String id;
  final String name;
  final String description;
  final String? createdAt;
  final String? updatedAt;

  Project({
    String? id,
    String? name,
    String? description,
    List<String>? teamIds,
    String? createdAt,
    String? updatedAt,
  })  : id = id ?? '',
        name = name ?? '',
        description = description ?? '',
        createdAt = createdAt,
        updatedAt = updatedAt;

  @override
  String toString() {
    if (kDebugMode) {
      return 'Project(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
    }
    return super.toString();
  }
}
