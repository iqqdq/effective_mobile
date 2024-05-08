import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/features/home/view/view.dart';
import 'package:flutter/material.dart';

class OfferListView extends StatelessWidget {
  final List<Offer> offers;

  const OfferListView({
    super.key,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            Titles.flyAwayMusically,
            style: Theme.of(context).textTheme.titleLarge,
          )),
      const SizedBox(height: 12.0),
      SizedBox(
        height: 213.16,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          scrollDirection: Axis.horizontal,
          itemCount: offers.length,
          itemBuilder: (context, index) => OfferTile(offer: offers[index]),
        ),
      ),
    ]);
  }
}
