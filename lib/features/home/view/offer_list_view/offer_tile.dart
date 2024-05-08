import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class OfferTile extends StatelessWidget {
  final Offer offer;

  const OfferTile({
    super.key,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    var price = NumberFormat('#,###,000')
        .format(offer.price.value)
        .replaceAll(',', ' ');

    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        /// IMAGE
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            'assets/images/offers/${offer.id}.png',
            height: 133.16,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5.0),

        /// TITLE
        Text(
          offer.title,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 5.0),

        /// CITY
        Text(
          offer.town,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 4.0),

        /// PRICE
        Row(children: [
          SvgPicture.asset(
            'assets/icons/ic_airplane.svg',
            width: 17.06,
            height: 17.06,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 4.0),
          Text(
            'от $price ${Titles.ruble.decodeUnicode()}',
            maxLines: 1,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ]),
      ]),
    );
  }
}
