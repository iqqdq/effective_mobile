import 'package:shared_preferences/shared_preferences.dart';

import 'local.dart';

class LocalRepository implements LocalRepositoryInterface {
  LocalRepository({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  String? getFromPlace() => sharedPreferences.getString('from_place');

  @override
  String? getToPlace() => sharedPreferences.getString('to_place');

  @override
  DateTime? getComebackDate() {
    String? comeback = sharedPreferences.getString('comeback_date');
    if (comeback == null) return null;
    return DateTime.parse(comeback);
  }

  @override
  DateTime? getWhenDate() {
    String? when = sharedPreferences.getString('when_date');
    if (when == null) return null;
    return DateTime.parse(when);
  }

  @override
  void setFromPlace(String? place) {
    if (place == null) return;
    sharedPreferences.setString(
      'from_place',
      place,
    );
  }

  @override
  void setToPlace(String? place) {
    if (place == null) return;
    sharedPreferences.setString(
      'to_place',
      place,
    );
  }

  @override
  void setComebackDate(String? date) {
    if (date == null) return;
    sharedPreferences.setString(
      'comeback_date',
      date,
    );
  }

  @override
  void clearComebackDate() => sharedPreferences.remove('comeback_date');

  @override
  void setWhenDate(String? date) {
    if (date == null) return;
    sharedPreferences.setString(
      'when_date',
      date,
    );
  }
}
