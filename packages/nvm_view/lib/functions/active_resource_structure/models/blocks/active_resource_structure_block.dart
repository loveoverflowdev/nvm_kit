import 'active_field_block.dart';

final class ActiveResourceStructureBlock {
  final String id;
  final String? resourceCode;
  final String? resourceTitle;
  final List<ActiveFieldBlock>? activeFields;

  ActiveResourceStructureBlock({
    required this.id,
    required this.resourceCode,
    required this.resourceTitle,
    required this.activeFields,
  });
}
