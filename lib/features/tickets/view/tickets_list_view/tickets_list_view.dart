import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/features/tickets/view/view.dart';
import 'package:flutter/material.dart';

class TicketsListView extends StatelessWidget {
  final List<Ticket> tickets;

  const TicketsListView({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(
        top: 12.0,
        left: 16.0,
        right: 16.0,
        bottom: MediaQuery.of(context).padding.bottom + 56.0,
      ),
      itemCount: tickets.length,
      itemBuilder: (context, index) => TicketTile(
        ticket: tickets[index],
        onTap: () => {},
      ),
    );
  }
}
