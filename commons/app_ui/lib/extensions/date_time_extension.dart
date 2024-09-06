import 'package:intl/intl.dart';

/// Extension to make displaying [DateTime] objects simpler.
extension DateTimeEx on DateTime {
  /// Converts [DateTime] into a MMMM dd, yyyy [String].
  String get ddMMyyyy {
    return DateFormat('dd/MM/yyyy').format(this);
  }

  String getHumanizedDisplay() {
    final now = DateTime.now();
    final difference = now.difference(this);
    
    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24 && this.day == now.day) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours < 48 && now.day - this.day == 1) {
      return 'Yesterday, ${DateFormat('HH:mm').format(this)}';
    } else if (this.year == now.year) {
      return DateFormat('d/M/yyyy HH:mm').format(this);
    } else {
      return DateFormat('d/M/yyyy HH:mm').format(this);
    }
  }
}
