import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'models/responses/responses.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  factory ApiClient.create({String? apiUrl}) {
    final dio = Dio();

    if (apiUrl != null) {
      return ApiClient(dio, baseUrl: apiUrl);
    }

    return ApiClient(dio);
  }

  @GET('00727197-24ae-48a0-bcb3-63eb35d7a9de')
  Future<OffersResponse> getOffers();

  @GET('2dbc0999-86bf-4c08-8671-bac4b7a5f7eb')
  Future<TicketsResponse> getTickets();

  @GET('3424132d-a51a-4613-b6c9-42b2d214f35f')
  Future<TicketOffersResponse> getTicketOffers();
}
