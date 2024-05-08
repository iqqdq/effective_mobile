part of 'ticket_offers_bloc.dart';

@freezed
class TicketOffersState with _$TicketOffersState {
  const factory TicketOffersState.loading() = _TicketOffersLoadingState;

  const factory TicketOffersState.loaded({
    required String? fromPlace,
    required String? toPlace,
    required DateTime? comebackDate,
    required DateTime? whenDate,
    required List<TicketOffer> ticketOffers,
  }) = _TicketOffersLoadedState;
}
