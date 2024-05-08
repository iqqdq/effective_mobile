// ignore_for_file: non_constant_identifier_names

import 'package:effective_mobile/api/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_offers_response.g.dart';

@JsonSerializable()
class TicketOffersResponse {
  final List<TicketOffer> tickets_offers;

  TicketOffersResponse({
    required this.tickets_offers,
  });

  factory TicketOffersResponse.fromJson(Map<String, dynamic> json) =>
      _$TicketOffersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TicketOffersResponseToJson(this);
}
