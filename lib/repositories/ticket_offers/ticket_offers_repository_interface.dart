import 'package:effective_mobile/api/models/models.dart';

abstract interface class TicketOffersRepositoryInterface {
  Future<List<TicketOffer>> getTicketOffers();
}
