import 'package:effective_mobile/api/models/models.dart';

abstract interface class OffersRepositoryInterface {
  Future<List<Offer>> getOffers();
}
