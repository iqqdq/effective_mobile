import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class TicketOfferTile extends StatelessWidget {
  final int index;
  final TicketOffer ticketOffer;
  final VoidCallback onTap;

  const TicketOfferTile({
    super.key,
    required this.index,
    required this.ticketOffer,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var price = NumberFormat('#,###,000')
        .format(ticketOffer.price.value)
        .replaceAll(',', ' ');

    var times = '';

    for (var element in ticketOffer.time_range) {
      times += '$element  ';
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(children: [
            const SizedBox(height: 16.0),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              /// INDICATOR
              Container(
                margin: const EdgeInsets.only(top: 2.0, right: 8.0),
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: index == 0
                      ? HexColors.red
                      : index == 1
                          ? Theme.of(context).primaryColor
                          : HexColors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),

              /// TICKET OFFER'S PARAM'S
              Expanded(
                child: Column(children: [
                  Row(children: [
                    /// TITLE
                    Expanded(
                      child: Text(
                        ticketOffer.title,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontStyle: FontStyle.italic,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ),
                    ),

                    Row(children: [
                      /// PRICE
                      Text(
                        '$price ${Titles.ruble.decodeUnicode()}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontStyle: FontStyle.italic,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                      SvgPicture.asset('assets/icons/ic_right_arrow.svg'),
                    ]),
                  ]),
                  const SizedBox(height: 4.0),

                  /// TIME PERIOD'S
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          times,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 10.0),
                ]),
              ),
            ]),

            /// DIVIDER
            Container(
              height: 0.5,
              color: Theme.of(context).dividerColor,
            ),
          ]),
        ),
        onTap: () => onTap(),
      ),
    );
  }
}
