part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetcOffers() = HomeFetchEvent;

  const factory HomeEvent.saveFromPlace(
    String? place,
  ) = HomeSaveFromValueEvent;

  const factory HomeEvent.saveToPlace(
    String? place,
  ) = HomeSaveToValueEvent;
}
