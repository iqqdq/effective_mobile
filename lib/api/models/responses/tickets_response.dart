import 'package:effective_mobile/api/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tickets_response.g.dart';

@JsonSerializable()
class TicketsResponse {
  final List<Ticket> tickets;

  TicketsResponse({
    required this.tickets,
  });

  factory TicketsResponse.fromJson(Map<String, dynamic> json) =>
      _$TicketsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsResponseToJson(this);
}
