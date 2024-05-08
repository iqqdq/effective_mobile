import 'package:auto_route/auto_route.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/features/home/bloc/home_bloc.dart';
import 'package:effective_mobile/features/ticket_offers/bloc/ticket_offers_bloc.dart';
import 'package:effective_mobile/features/ticket_offers/view/view.dart';
import 'package:effective_mobile/router/router.dart';
import 'package:effective_mobile/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TicketOffersScreen extends StatefulWidget {
  const TicketOffersScreen({super.key});

  @override
  State<TicketOffersScreen> createState() => _TicketOfferssScreenState();
}

class _TicketOfferssScreenState extends State<TicketOffersScreen> {
  @override
  void initState() {
    BlocProvider.of<TicketOffersBloc>(context)
        .add(const TicketOffersEvent.fetchTicketOffers());

    _deleteComebackDateTime();

    _saveWhenDateTime(dateTime: DateTime.now());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocBuilder<TicketOffersBloc, TicketOffersState>(
          builder: (context, state) {
        return state.when(
          loading: () => Center(
            child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor),
          ),
          loaded: (
            fromPlace,
            toPlace,
            comebackDate,
            whenDate,
            ticketOffers,
          ) =>
              Column(children: [
            /// SEARCH APP BAR
            SearchAppBar(
              fromPlace: fromPlace,
              toPlace: toPlace,
              onSwitchTap: (places) => _switchPlaces(
                fromPlace: places.first,
                toPlace: places.last,
              ),
              onLeadingTap: () => _pop(),
            ),
            const SizedBox(height: 12.0),

            /// TAG'S VIEW
            TagView(
              onComebackDateTimeUpdate: (dateTime) =>
                  _saveComebackDateTime(dateTime: dateTime),
              onWhenDateTimeUpdate: (dateTime) =>
                  _saveWhenDateTime(dateTime: dateTime),
            ),
            Expanded(
              child: ListView(
                  padding: const EdgeInsets.only(top: 16.0),
                  children: [
                    /// TICKET'S LIST VIEW
                    TicketOffersListView(
                      ticketOffers: ticketOffers,
                      onTap: (index) => {},
                    ),

                    const SizedBox(height: 23.0),

                    /// SHOW ALL TICKET'S BUTTON
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ButtonWidget(
                        title: Titles.showAllTickets,
                        color: Theme.of(context).primaryColor,
                        onTap: () => _showAllTickets(),
                      ),
                    ),
                    const SizedBox(height: 24.0),

                    /// SUBSCRIPTION SWITCH
                    const PriceSubscriptionSwitch()
                  ]),
            ),
          ]),
        );
      })),
    );
  }

  void _pop() => context.router.pop();

  void _switchPlaces({
    required String? fromPlace,
    required String? toPlace,
  }) {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.saveFromPlace(fromPlace));

    BlocProvider.of<HomeBloc>(context).add(HomeEvent.saveToPlace(toPlace));
  }

  void _saveComebackDateTime({required DateTime dateTime}) =>
      BlocProvider.of<TicketOffersBloc>(context)
          .add(TicketOffersEvent.saveComebackDate(dateTime.toIso8601String()));

  void _deleteComebackDateTime() => BlocProvider.of<TicketOffersBloc>(context)
      .add(const TicketOffersEvent.deleteComebackDate());

  void _saveWhenDateTime({required DateTime dateTime}) =>
      BlocProvider.of<TicketOffersBloc>(context)
          .add(TicketOffersEvent.saveWhenDate(dateTime.toIso8601String()));

  void _showAllTickets() => context.router.push(const TicketsRoute());
}
