final class RequestField {
  final String? name;
  final List<RequestField>? children;

  factory RequestField.name(String name) => RequestField._(name, null);
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
          name != null || children != null,
          'name or children must be provided',
        );

  String build() {
    if (children != null) {
      final String fieldChildren = children!
          .map(
            (e) => e.build(),
          )
          .where(
            (e) => e.isNotEmpty,
          )
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
