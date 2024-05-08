abstract interface class LocalRepositoryInterface {
  String? getFromPlace();

  String? getToPlace();

  DateTime? getComebackDate();

  DateTime? getWhenDate();

  void setFromPlace(String? place);

  void setToPlace(String? place);

  void setComebackDate(String? date);

  void clearComebackDate();

  void setWhenDate(String? date);
}
