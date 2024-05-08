import 'package:effective_mobile/api/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offers_response.g.dart';

@JsonSerializable()
class OffersResponse {
  final List<Offer> offers;

  OffersResponse({
    required this.offers,
  });

  factory OffersResponse.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OffersResponseToJson(this);
}
