// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomNavigationBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationBarScreen(),
      );
    },
    HomeNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeNavigationScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchScreen(
          key: args.key,
          fromPlace: args.fromPlace,
          isFrom: args.isFrom,
          onPop: args.onPop,
        ),
      );
    },
    StubBarRoute.name: (routeData) {
      final args = routeData.argsAs<StubBarRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StubBarScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    StubRoute.name: (routeData) {
      final args = routeData.argsAs<StubRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StubScreen(
          key: args.key,
          child: args.child,
        ),
      );
    },
    TicketOffersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TicketOffersScreen(),
      );
    },
    TicketsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TicketsScreen(),
      );
    },
  };
}

/// generated route for
/// [BottomNavigationBarScreen]
class BottomNavigationBarRoute extends PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeNavigationScreen]
class HomeNavigationRoute extends PageRouteInfo<void> {
  const HomeNavigationRoute({List<PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    String? fromPlace,
    required bool isFrom,
    required void Function() onPop,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            fromPlace: fromPlace,
            isFrom: isFrom,
            onPop: onPop,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.fromPlace,
    required this.isFrom,
    required this.onPop,
  });

  final Key? key;

  final String? fromPlace;

  final bool isFrom;

  final void Function() onPop;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, fromPlace: $fromPlace, isFrom: $isFrom, onPop: $onPop}';
  }
}

/// generated route for
/// [StubBarScreen]
class StubBarRoute extends PageRouteInfo<StubBarRouteArgs> {
  StubBarRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          StubBarRoute.name,
          args: StubBarRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'StubBarRoute';

  static const PageInfo<StubBarRouteArgs> page =
      PageInfo<StubBarRouteArgs>(name);
}

class StubBarRouteArgs {
  const StubBarRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'StubBarRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [StubScreen]
class StubRoute extends PageRouteInfo<StubRouteArgs> {
  StubRoute({
    Key? key,
    required Widget child,
    List<PageRouteInfo>? children,
  }) : super(
          StubRoute.name,
          args: StubRouteArgs(
            key: key,
            child: child,
          ),
          initialChildren: children,
        );

  static const String name = 'StubRoute';

  static const PageInfo<StubRouteArgs> page = PageInfo<StubRouteArgs>(name);
}

class StubRouteArgs {
  const StubRouteArgs({
    this.key,
    required this.child,
  });

  final Key? key;

  final Widget child;

  @override
  String toString() {
    return 'StubRouteArgs{key: $key, child: $child}';
  }
}

/// generated route for
/// [TicketOffersScreen]
class TicketOffersRoute extends PageRouteInfo<void> {
  const TicketOffersRoute({List<PageRouteInfo>? children})
      : super(
          TicketOffersRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketOffersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TicketsScreen]
class TicketsRoute extends PageRouteInfo<void> {
  const TicketsRoute({List<PageRouteInfo>? children})
      : super(
          TicketsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
