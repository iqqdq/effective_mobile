import 'package:json_annotation/json_annotation.dart';
import 'entities.dart';

part 'offer.g.dart';

@JsonSerializable()
class Offer {
  final int id;
  final String title;
  final String town;
  final Price price;

  Offer({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  Map<String, dynamic> toJson() => _$OfferToJson(this);
}
