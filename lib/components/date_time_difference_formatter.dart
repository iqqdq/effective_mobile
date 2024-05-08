extension DateTimeDifference on DateTime {
  String toTimeDifference({required DateTime to}) {
    Duration difference = this.difference(to);
    difference = difference.inHours < 0.0 ? difference * -1 : difference;

    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;

    return '$hours.$minutes';
  }
}
