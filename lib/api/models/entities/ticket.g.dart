// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      provider_name: json['provider_name'] as String,
      company: json['company'] as String,
      departure: Arrival.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: Arrival.fromJson(json['arrival'] as Map<String, dynamic>),
      has_transfer: json['has_transfer'] as bool,
      has_visa_transfer: json['has_visa_transfer'] as bool,
      luggage: Luggage.fromJson(json['luggage'] as Map<String, dynamic>),
      hand_luggage:
          HandLuggage.fromJson(json['hand_luggage'] as Map<String, dynamic>),
      is_returnable: json['is_returnable'] as bool,
      is_exchangable: json['is_exchangable'] as bool,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'provider_name': instance.provider_name,
      'company': instance.company,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.has_transfer,
      'has_visa_transfer': instance.has_visa_transfer,
      'luggage': instance.luggage,
      'hand_luggage': instance.hand_luggage,
      'is_returnable': instance.is_returnable,
      'is_exchangable': instance.is_exchangable,
    };

Arrival _$ArrivalFromJson(Map<String, dynamic> json) => Arrival(
      town: json['town'] as String,
      date: DateTime.parse(json['date'] as String),
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$ArrivalToJson(Arrival instance) => <String, dynamic>{
      'town': instance.town,
      'date': instance.date.toIso8601String(),
      'airport': instance.airport,
    };

HandLuggage _$HandLuggageFromJson(Map<String, dynamic> json) => HandLuggage(
      has_hand_luggage: json['has_hand_luggage'] as bool,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$HandLuggageToJson(HandLuggage instance) =>
    <String, dynamic>{
      'has_hand_luggage': instance.has_hand_luggage,
      'size': instance.size,
    };

Luggage _$LuggageFromJson(Map<String, dynamic> json) => Luggage(
      has_luggage: json['has_luggage'] as bool,
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LuggageToJson(Luggage instance) => <String, dynamic>{
      'has_luggage': instance.has_luggage,
      'price': instance.price,
    };
