import 'package:effective_mobile/features/search/view/view.dart';
import 'package:flutter/material.dart';

class SearchTextFieldView extends StatefulWidget {
  final TextEditingController fromTextEditingController;
  final FocusNode fromFocusNode;
  final TextEditingController toTextEditingController;
  final FocusNode toFocusNode;
  final Function(int) onSubmitted;

  const SearchTextFieldView({
    super.key,
    required this.fromTextEditingController,
    required this.fromFocusNode,
    required this.toTextEditingController,
    required this.toFocusNode,
    required this.onSubmitted,
  });

  @override
  State<SearchTextFieldView> createState() => _SearchTextFieldViewState();
}

class _SearchTextFieldViewState extends State<SearchTextFieldView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 6.0,
        top: 4.0,
        bottom: 4.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          /// FROM INPUT
          SearchTextField(
            textEditingController: widget.fromTextEditingController,
            focusNode: widget.fromFocusNode,
            hintText: 'Откуда - Мосвка',
            preffixIcon: 'assets/icons/ic_airplane_up.svg',
            onSubmitted: () => widget.onSubmitted(0),
          ),

          /// DIVIDER
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            height: 0.5,
            color: Theme.of(context).dividerColor,
          ),

          /// TO INPUT
          SearchTextField(
            textEditingController: widget.toTextEditingController,
            focusNode: widget.toFocusNode,
            hintText: 'Куда - Турция',
            preffixIcon: 'assets/icons/ic_airplane_down.svg',
            onSubmitted: () => widget.onSubmitted(1),
          ),
        ],
      ),
    );
  }
}
