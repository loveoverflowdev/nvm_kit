import 'package:intl/intl.dart';

/// Extension to make displaying [DateTime] objects simpler.
extension DateTimeEx on DateTime {
  /// Converts [DateTime] into a MMMM dd, yyyy [String].
  String get ddMMyyyy {
    return DateFormat('dd/MM/yyyy').format(this);
  }
}
