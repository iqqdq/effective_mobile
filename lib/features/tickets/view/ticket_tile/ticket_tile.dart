import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketTile extends StatelessWidget {
  final Ticket ticket;
  final VoidCallback onTap;

  const TicketTile({
    super.key,
    required this.ticket,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var price = NumberFormat('#,###,000')
        .format(ticket.price?.value)
        .replaceAll(',', ' ');

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Stack(children: [
        /// TICKET CARD
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Material(
            borderRadius: BorderRadius.circular(16.0),
            color: Theme.of(context).dialogBackgroundColor,
            child: InkWell(
              onTap: () => onTap(),
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                height: 125.0,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// PRICE
                    Text(
                      '$price ${Titles.ruble.decodeUnicode()}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// INDICATOR
                          Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                                color: HexColors.red,
                                borderRadius: BorderRadius.circular(12.0)),
                          ),

                          /// DEPARTURE
                          _timePort(
                            context,
                            time: ticket.departure.date.toTime(),
                            port: ticket.departure.airport,
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            '—',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: HexColors.grey6),
                          ),
                          const SizedBox(width: 4.0),

                          /// ARRIVAL
                          _timePort(
                            context,
                            time: ticket.arrival.date.toTime(),
                            port: ticket.arrival.airport,
                          ),
                          const SizedBox(width: 13.0),
                          Expanded(
                            child: Text(
                              '${ticket.departure.date.toTimeDifference(to: ticket.arrival.date)}${Titles.hoursInTransit} ${ticket.has_transfer ? '' : Titles.withoutTransfer}',
                              style: Theme.of(context).textTheme.titleSmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ),

        /// BADGE
        ticket.badge == null
            ? Container()
            : Container(
                height: 21.0,
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  bottom: 2.0,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  ticket.badge!,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
      ]),
    );
  }

  Widget _timePort(
    BuildContext context, {
    required String time,
    required String port,
  }) {
    return Column(
      children: [
        Text(
          time,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 4.0),
        Text(
          port,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: HexColors.grey6),
        ),
      ],
    );
  }
}
