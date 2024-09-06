import 'package:intl/intl.dart';

extension DateTimeSerilizable on String {
  DateTime? toCreatedTime() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').parse(this);
  }
}
