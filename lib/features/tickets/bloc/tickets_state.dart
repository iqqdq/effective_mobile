part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState.loading() = _TicketsLoadingState;

  const factory TicketsState.loaded({
    required String? fromPlace,
    required String? toPlace,
    required DateTime? comebackDate,
    required DateTime? whenDate,
    required List<Ticket> tickets,
  }) = _TicketsLoadedState;
}
