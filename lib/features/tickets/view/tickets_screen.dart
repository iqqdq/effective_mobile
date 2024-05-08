import 'package:auto_route/auto_route.dart';
import 'package:effective_mobile/features/tickets/bloc/tickets_bloc.dart';
import 'package:effective_mobile/features/tickets/view/tickets_app_bar/tickets_app_bar.dart';
import 'package:effective_mobile/features/tickets/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TicketsScreen extends StatefulWidget {
  const TicketsScreen({super.key});

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  @override
  void initState() {
    BlocProvider.of<TicketsBloc>(context)
        .add(const TicketsEvent.fetchTickets());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            BlocBuilder<TicketsBloc, TicketsState>(builder: (context, state) {
          return state.when(
            loading: () => SizedBox.expand(
              child: Center(
                child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor),
              ),
            ),
            loaded: (
              fromPlace,
              toPlace,
              comebackDate,
              whenDate,
              tickets,
            ) =>
                SizedBox.expand(
              child: Column(children: [
                /// APP BAR
                TicketsAppBar(
                  onTap: () => context.router.pop(),
                  fromPlace: fromPlace,
                  toPlace: toPlace,
                  comebackDate: comebackDate,
                  whenDate: whenDate,
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: Stack(children: [
                    /// TICKET'S LIST VIEW
                    TicketsListView(tickets: tickets),

                    /// FILTER BUTTON

                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TicketsFilterButton(onTap: () => {}),
                            const SizedBox(height: 16.0),
                          ]),
                    ])
                  ]),
                ),
              ]),
            ),
          );
        }),
      ),
    );
  }
}
