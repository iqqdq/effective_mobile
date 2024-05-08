// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'entities.dart';

part 'ticket.g.dart';

@JsonSerializable()
class Ticket {
  final int id;
  String? badge;
  Price? price;
  final String provider_name;
  final String company;
  final Arrival departure;
  final Arrival arrival;
  final bool has_transfer;
  final bool has_visa_transfer;
  final Luggage luggage;
  final HandLuggage hand_luggage;
  final bool is_returnable;
  final bool is_exchangable;

  Ticket({
    required this.id,
    this.badge,
    this.price,
    required this.provider_name,
    required this.company,
    required this.departure,
    required this.arrival,
    required this.has_transfer,
    required this.has_visa_transfer,
    required this.luggage,
    required this.hand_luggage,
    required this.is_returnable,
    required this.is_exchangable,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

@JsonSerializable()
class Arrival {
  final String town;
  final DateTime date;
  final String airport;

  Arrival({
    required this.town,
    required this.date,
    required this.airport,
  });

  factory Arrival.fromJson(Map<String, dynamic> json) =>
      _$ArrivalFromJson(json);

  Map<String, dynamic> toJson() => _$ArrivalToJson(this);
}

enum Airport { aer, vko }

@JsonSerializable()
class HandLuggage {
  final bool has_hand_luggage;
  String? size;

  HandLuggage({
    required this.has_hand_luggage,
    this.size,
  });

  factory HandLuggage.fromJson(Map<String, dynamic> json) =>
      _$HandLuggageFromJson(json);

  Map<String, dynamic> toJson() => _$HandLuggageToJson(this);
}

@JsonSerializable()
class Luggage {
  final bool has_luggage;
  Price? price;

  Luggage({
    required this.has_luggage,
    this.price,
  });

  factory Luggage.fromJson(Map<String, dynamic> json) =>
      _$LuggageFromJson(json);

  Map<String, dynamic> toJson() => _$LuggageToJson(this);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverse_map;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverse_map = map.map((k, v) => MapEntry(v, k));
    return reverse_map;
  }
}
