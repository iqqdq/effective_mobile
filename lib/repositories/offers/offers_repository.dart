import 'package:effective_mobile/api/api.dart';
import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/api/models/responses/responses.dart';
import 'offers.dart';

class OffersRepository implements OffersRepositoryInterface {
  OffersRepository({
    required this.apiClient,
  });

  final ApiClient apiClient;

  @override
  Future<List<Offer>> getOffers() async {
    try {
      OffersResponse response = await apiClient.getOffers();
      return response.offers;
    } catch (e) {
      return [];
    }
  }
}
