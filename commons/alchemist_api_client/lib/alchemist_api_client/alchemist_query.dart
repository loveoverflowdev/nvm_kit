class AlchemistQuery {
  String? requestField;
  Map<String, dynamic> filtering;
  Map<String, String> orderBy;
  int limit;
  int offset;
  String search;

  AlchemistQuery({
    this.requestField,
    Map<String, dynamic>? filtering,
    Map<String, String>? orderBy,
    int? limit,
    int? offset,
    String? search,
  })  : filtering = filtering ?? {},
        orderBy = _validateOrderBy(orderBy ?? {}),
        limit = limit ?? 0,
        offset = offset ?? 0,
        search = search ?? '';

  // static List<String> _removeEmptyAndDuplicateStrings(List<String> input) {
  //   return input.where((value) => value.isNotEmpty).toSet().toList();
  // }

  static Map<String, String> _validateOrderBy(Map<String, String> orderBy) {
    if (orderBy.isEmpty) {
      return {};
    }

    if (orderBy.length != 1) {
      throw ArgumentError(
          'Invalid orderBy, correct format: {field: direction}');
    }

    if (orderBy.keys.first.isEmpty) {
      throw ArgumentError(
          'Invalid orderBy field, correct format: {field: direction(asc|desc)}');
    }

    if (orderBy.values.first != 'asc' && orderBy.values.first != 'desc') {
      throw ArgumentError(
          'Invalid orderBy direction, correct format: {field: direction(asc|desc)}');
    }

    String field = orderBy.keys.first;
    String direction = orderBy.values.first;

    return {field: direction};
  }

  Map<String, dynamic> serialize() {
    Map<String, dynamic> result = {};

    final requestFieldString = requestField ?? '';
    if (requestFieldString.isNotEmpty) {
      result['fields'] = requestFieldString;
    }

    if (filtering.isNotEmpty) {
      result['filtering'] = filtering;
    }

    if (limit != 0) {
      result['limit'] = limit;
    }

    if (offset != 0) {
      result['offset'] = offset;
    }

    if (search.isNotEmpty) {
      result['search'] = search;
    }

    if (orderBy.isNotEmpty) {
      result['sort'] = orderBy.keys.first;
      result['direction'] = orderBy.values.first;
    }
    return result;
  }
}
