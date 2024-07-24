final class RequestField {
  final String? name;
  final List<RequestField> children;

  factory RequestField.name(String name) => RequestField._(name, []);
  factory RequestField.children(List<RequestField> children) =>
      RequestField._(null, children);

  RequestField({
    required this.name,
    required this.children,
  });

  RequestField._(
    this.name,
    this.children,
  ) : assert(
          name != null || children.isNotEmpty,
          'name or children must be provided',
        );

  RequestField addChild(RequestField field) {
    children.add(field);
    return this;
  }

  RequestField addChildren(List<RequestField> newChildren) {
    for (final newChild in newChildren) {
      children.add(newChild);
    }
    return this;
  }

  String build() {
    if (children.isNotEmpty) {
      final String fieldChildren = children
          .map(
            (e) => e.build(),
          )
          .where(
            (e) => e.isNotEmpty,
          )
          .join(',')
          .split(',')
          .toSet()
          .join(',');
      if (name == null) {
        return fieldChildren;
      } else {
        return '${name!}{$fieldChildren}';
      }
    }
    return name!;
  }
}
