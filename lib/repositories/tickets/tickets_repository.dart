import 'package:effective_mobile/api/api.dart';
import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/api/models/responses/responses.dart';
import 'tickets.dart';

class TicketsRepository implements TicketsRepositoryInterface {
  TicketsRepository({required this.apiClient});

  final ApiClient apiClient;

  @override
  Future<List<Ticket>> getTickets() async {
    try {
      TicketsResponse response = await apiClient.getTickets();
      return response.tickets;
    } catch (e) {
      return [];
    }
  }
}
