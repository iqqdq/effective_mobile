import 'package:effective_mobile/features/home/bloc/home_bloc.dart';
import 'package:effective_mobile/router/router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:effective_mobile/features/search/view/view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  final String? fromPlace;
  final bool isFrom;
  final VoidCallback onPop;

  const SearchScreen({
    super.key,
    this.fromPlace,
    required this.isFrom,
    required this.onPop,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _fromTextEditingController =
      TextEditingController();
  final FocusNode _fromFocusNode = FocusNode();

  final TextEditingController _toTextEditingController =
      TextEditingController();
  final FocusNode _toFocusNode = FocusNode();

  bool _isFirstAppear = true;

  final _titles = [
    'Стамбул',
    'Сочи',
    'Пукет',
  ];

  @override
  void initState() {
    _fromTextEditingController.text = widget.fromPlace ?? '';

    _fromTextEditingController.addListener(() {
      if (_fromTextEditingController.text.isNotEmpty) {
        BlocProvider.of<HomeBloc>(context)
            .add(HomeEvent.saveFromPlace(_fromTextEditingController.text));
      }
    });

    _fromFocusNode.addListener(() => setState(() {}));

    _toTextEditingController.addListener(() {
      if (_toTextEditingController.text.isNotEmpty) {
        BlocProvider.of<HomeBloc>(context)
            .add(HomeEvent.saveToPlace(_toTextEditingController.text));
      }
    });

    _toFocusNode.addListener(() => setState(() => _isFirstAppear = false));

    super.initState();

    widget.isFrom ? _fromFocusNode.requestFocus() : _toFocusNode.requestFocus();
  }

  @override
  void dispose() {
    _fromTextEditingController.dispose();
    _fromFocusNode.dispose();

    _toTextEditingController.dispose();
    _toFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.9,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
            color: Theme.of(context).dialogBackgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            )),
        child: Stack(children: [
          Column(children: [
            /// DRAG HANDLE
            Container(
              margin: const EdgeInsets.only(top: 18.0, bottom: 24.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [DragHandle()],
              ),
            ),

            /// SEARCH INPUT
            SearchTextFieldView(
              fromTextEditingController: _fromTextEditingController,
              fromFocusNode: _fromFocusNode,
              toTextEditingController: _toTextEditingController,
              toFocusNode: _toFocusNode,
              onSubmitted: (index) => _submit(index: index),
            ),

            /// CATEGORY BUTTON'S
            AnimatedOpacity(
              opacity: _fromFocusNode.hasFocus ? 0.0 : 1.0,
              duration: Duration(milliseconds: _isFirstAppear ? 0 : 300),
              child: CategoryRow(
                  onTap: (child, title) => _setToPlace(
                        child,
                        text: title,
                      )),
            ),

            /// TICKET OFFER'S
            AnimatedOpacity(
              opacity: _fromFocusNode.hasFocus ? 0.0 : 1.0,
              duration: Duration(milliseconds: _isFirstAppear ? 0 : 300),
              child: PopularDirectionsListView(
                  titles: _titles,
                  onTap: (index) => _setToPlace(
                        null,
                        text: _titles[index],
                      )),
            ),
          ])
        ]),
      ),
    );
  }

  void _pop() {
    FocusScope.of(context).unfocus();

    Future.delayed(
      const Duration(milliseconds: 300),
      () => {
        if (mounted) context.router.pop().whenComplete(() => widget.onPop())
      },
    );
  }

  void _submit({required int index}) => index == 0
      ? _toFocusNode.requestFocus()
      : _toTextEditingController.text.isEmpty
          ? FocusScope.of(context).unfocus()
          : _pop();

  void _setToPlace(
    Widget? child, {
    required String text,
  }) {
    if (child != null) {
      _showStubScreen(child: child);
    } else if (text.isNotEmpty) {
      setState(() => _toTextEditingController.text = text);

      _fromTextEditingController.text.isEmpty
          ? _fromFocusNode.requestFocus()
          : _pop();
    }
  }

  void _showStubScreen({required Widget child}) {
    FocusScope.of(context).unfocus();

    Future.delayed(
      const Duration(milliseconds: 300),
      () => {
        if (mounted)
          context.router
              .pop()
              .whenComplete(() => context.router.push(StubRoute(child: child))),
      },
    );
  }
}
