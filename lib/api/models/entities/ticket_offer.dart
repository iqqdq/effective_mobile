// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'entities.dart';

part 'ticket_offer.g.dart';

@JsonSerializable()
class TicketOffer {
  final int id;
  final String title;
  final List<String> time_range;
  final Price price;

  TicketOffer({
    required this.id,
    required this.title,
    required this.time_range,
    required this.price,
  });

  factory TicketOffer.fromJson(Map<String, dynamic> json) =>
      _$TicketOfferFromJson(json);

  Map<String, dynamic> toJson() => _$TicketOfferToJson(this);
}
