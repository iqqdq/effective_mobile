part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeLoadingState;

  const factory HomeState.loaded({
    required String? fromPlace,
    required List<Offer> offers,
  }) = _HomeLoadedState;
}
