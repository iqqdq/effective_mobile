// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketsResponse _$TicketsResponseFromJson(Map<String, dynamic> json) =>
    TicketsResponse(
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketsResponseToJson(TicketsResponse instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };
