import 'package:effective_mobile/api/models/models.dart';

abstract interface class TicketsRepositoryInterface {
  Future<List<Ticket>> getTickets();
}
