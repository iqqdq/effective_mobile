import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:effective_mobile/features/bottom_navigation_bar/view/view.dart';
import 'package:effective_mobile/features/home/view/home_navigation_route.dart';
import 'package:effective_mobile/features/home/view/view.dart';
import 'package:effective_mobile/features/search/view/view.dart';
import 'package:effective_mobile/features/ticket_offers/view/view.dart';
import 'package:effective_mobile/features/tickets/view/view.dart';
import 'package:effective_mobile/features/stub/view/view.dart';

import '../features/stub_bar/view/view.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: BottomNavigationBarRoute.page,
            initial: true,
            children: [
              AutoRoute(page: HomeNavigationRoute.page, children: [
                AutoRoute(page: HomeRoute.page),
                AutoRoute(page: StubRoute.page),
                AutoRoute(page: TicketOffersRoute.page),
                AutoRoute(page: TicketsRoute.page),
              ]),
              AutoRoute(page: StubBarRoute.page)
            ]),
      ];
}
