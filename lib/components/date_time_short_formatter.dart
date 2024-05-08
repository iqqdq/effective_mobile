import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/components/date_time_weekday_formatter.dart';

extension DateTimeShortFormatter on DateTime {
  String toShortDate() => '$day ${toWeekday()}, ${toMonth()}';
}
