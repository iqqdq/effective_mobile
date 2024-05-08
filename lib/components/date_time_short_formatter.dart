import 'package:effective_mobile/components/components.dart';

extension DateTimeShortFormatter on DateTime {
  String toShortDate() => '$day ${toMonth()}, ${toWeekday()}';
}
