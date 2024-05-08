import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/features/ticket_offers/view/view.dart';
import 'package:effective_mobile/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class TicketOffersListView extends StatefulWidget {
  final List<TicketOffer> ticketOffers;
  final Function(int) onTap;

  const TicketOffersListView({
    super.key,
    required this.ticketOffers,
    required this.onTap,
  });

  @override
  State<TicketOffersListView> createState() => _TicketOffersListViewState();
}

class _TicketOffersListViewState extends State<TicketOffersListView> {
  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        color: HexColors.grey1,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        /// TITLE
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            Titles.directFlights,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 20.0),
          ),
        ),
        const SizedBox(height: 8.0),

        /// LIST VIEW
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _showAll ? widget.ticketOffers.length : 3,
          itemBuilder: (context, index) => TicketOfferTile(
            index: index,
            ticketOffer: widget.ticketOffers[index],
            onTap: () => widget.onTap(index),
          ),
        ),

        const SizedBox(height: 8.0),

        /// SHOW ALL BUTTON
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ButtonWidget(
            title: Titles.showAll,
            color: Colors.transparent,
            colorTitle: Theme.of(context).primaryColor,
            onTap: () => _expandListView(),
          ),
        )
      ]),
    );
  }

  void _expandListView() => setState(() => _showAll = !_showAll);
}
