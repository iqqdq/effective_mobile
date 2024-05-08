import 'package:effective_mobile/api/api.dart';
import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/api/models/responses/responses.dart';
import 'tickets_offers.dart';

class TicketOffersRepository implements TicketOffersRepositoryInterface {
  TicketOffersRepository({required this.apiClient});

  final ApiClient apiClient;

  @override
  Future<List<TicketOffer>> getTicketOffers() async {
    try {
      TicketOffersResponse response = await apiClient.getTicketOffers();
      return response.tickets_offers;
    } catch (e) {
      return [];
    }
  }
}
