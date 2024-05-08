import 'package:effective_mobile/features/home/bloc/home_bloc.dart';
import 'package:effective_mobile/features/home/view/view.dart';
import 'package:effective_mobile/features/search/search.dart';
import 'package:effective_mobile/router/router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<double> _opacity = ValueNotifier(0);

  final double _maxHeaderHeight = 260.0;
  final double _minHeaderHeight = 90.0;

  bool _didScrollUp = false;
  double _value = 1.0;

  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.fetcOffers());

    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
            child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return state.when(
            loading: () => SizedBox.expand(
              child: Center(
                child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor),
              ),
            ),
            loaded: (
              from,
              offers,
            ) =>
                CustomScrollView(controller: _scrollController, slivers: [
              /// SLIVER APP BAR
              SliverAppBar(
                centerTitle: true,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                surfaceTintColor: Colors.transparent,
                toolbarHeight: _value == 1.0
                    ? _maxHeaderHeight
                    : _maxHeaderHeight * _value <= _minHeaderHeight
                        ? _minHeaderHeight
                        : _maxHeaderHeight * _value,
                titleSpacing: 0.0,
                title: ValueListenableBuilder<double>(
                  valueListenable: _opacity,
                  builder: (
                    context,
                    value,
                    child,
                  ) =>

                      /// SEARCH VIEW
                      SearchView(
                    value: _value,
                    fromPlace: from,
                    onTap: (isFrom) => _showSearchScreen(
                      fromPlace: from,
                      isFrom: isFrom,
                    ),
                  ),
                ),
                flexibleSpace: HeaderTitle(value: _value),
                pinned: true,
                expandedHeight: _maxHeaderHeight,
              ),

              /// SLIVER LIST
              SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    children: List.generate(2, (index) {
                      return index == 0

                          /// OFFER LIST VIEW
                          ? OfferListView(offers: offers)

                          /// EXTRA SPACE FOR SCROLL ANIMATION
                          : SizedBox(
                              height: MediaQuery.of(context).size.height * 0.7);
                    }),
                  )
                ]),
              ),
            ]),
          );
        })));
  }

  void _scrollListener() {
    if (_scrollController.offset > 0.0) _didScrollUp = true;

    setState(() {
      if (_maxHeaderHeight > _scrollController.offset &&
          _scrollController.offset > 1.0) {
        _opacity.value = 1.0 - _scrollController.offset / _maxHeaderHeight;
      } else if (_scrollController.offset > _maxHeaderHeight &&
          _opacity.value != 1.0) {
        _opacity.value = 0.0;
      } else if (_scrollController.offset < 0.0 && _opacity.value != 0.0) {
        _opacity.value = 1.0;
      }

      if (_didScrollUp) _value = _opacity.value;
    });
  }

  void _showSearchScreen({
    required String? fromPlace,
    required bool isFrom,
  }) =>
      showModalBottomSheet(
        backgroundColor: Colors.transparent,
        useRootNavigator: true,
        isScrollControlled: true,
        context: context,
        builder: (sheetContext) => SearchScreen(
          fromPlace: fromPlace,
          isFrom: isFrom,
          onPop: () => context.router.pop().whenComplete(() => Future.delayed(
                const Duration(milliseconds: 300),
                () => context.router.push(const TicketOffersRoute()),
              )),
        ),
      );
}
