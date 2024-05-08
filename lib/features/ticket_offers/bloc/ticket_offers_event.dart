part of 'ticket_offers_bloc.dart';

@freezed
class TicketOffersEvent with _$TicketOffersEvent {
  const factory TicketOffersEvent.fetchTicketOffers() = TicketOffersFetchEvent;

  const factory TicketOffersEvent.saveComebackDate(
    String date,
  ) = TicketOffersSaveComebackDateEvent;

  const factory TicketOffersEvent.deleteComebackDate() =
      TicketOffersDeleteComebackDateEvent;

  const factory TicketOffersEvent.saveWhenDate(
    String? date,
  ) = TicketOffersSaveWhenDateEvent;
}
