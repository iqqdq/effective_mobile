import 'package:effective_mobile/extensions/extensions.dart';

extension DateTimeShortFormatter on DateTime {
  String toShortDate() => '$day ${toMonth()}, ${toWeekday()}';
}
