import 'dart:io';
import 'package:intl/intl.dart';

extension DateTimeMonthFormatter on DateTime {
  String toMonth() =>
      DateFormat.MMMM(Platform.localeName).format(this).replaceAll(
            month == 3
                ? 'т'
                : month == 5
                    ? 'й'
                    : month == 8
                        ? 'т'
                        : 'ь',
            month == 3 || month == 8 ? 'а' : 'я',
          );
}
