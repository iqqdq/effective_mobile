// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketOffersResponse _$TicketOffersResponseFromJson(
        Map<String, dynamic> json) =>
    TicketOffersResponse(
      tickets_offers: (json['tickets_offers'] as List<dynamic>)
          .map((e) => TicketOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketOffersResponseToJson(
        TicketOffersResponse instance) =>
    <String, dynamic>{
      'tickets_offers': instance.tickets_offers,
    };
