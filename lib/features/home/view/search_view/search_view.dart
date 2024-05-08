import 'package:flutter/material.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:flutter_svg/svg.dart';

class SearchView extends StatelessWidget {
  final double value;
  final String? fromPlace;

  final Function(bool) onTap;

  const SearchView({
    super.key,
    required this.value,
    required this.fromPlace,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const double maxHeight = 122.0;
    const double minHeight = 90.0;
    const double margin = 16.0;

    return Column(children: [
      SizedBox(height: 64.0 * value),

      /// SEARCH INPUT'S CONTAINER
      AnimatedContainer(
        duration: const Duration(milliseconds: 1),
        margin: EdgeInsets.symmetric(horizontal: margin * value),
        padding: const EdgeInsets.all(margin),
        height: maxHeight * value <= minHeight ? minHeight : maxHeight * value,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark.withOpacity(value),
          borderRadius: BorderRadius.circular(margin * value),
        ),
        child:

            /// SEARCH INPUT'S
            Container(
          margin: EdgeInsets.only(bottom: (margin - (margin * value)) / 2.0),
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 16.0,
          ),
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(margin),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context)
                      .scaffoldBackgroundColor
                      .withOpacity(0.25),
                  offset: const Offset(0.0, 4.0),
                  blurRadius: 4.0,
                )
              ]),
          child: Row(children: [
            SvgPicture.asset(fromPlace == null
                ? 'assets/icons/ic_search_black.svg'
                : 'assets/icons/ic_search_white.svg'),
            const SizedBox(width: margin),
            Expanded(
              child: Stack(children: [
                _fadeInOut(
                  isOut: true,
                  child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// FROM INPUT
                        _input(
                          context,
                          value: value,
                          margin: margin / 2.0,
                          isFrom: true,
                        ),

                        /// DIVIDER
                        Container(
                          height: 0.5,
                          color: Theme.of(context).dividerColor,
                        ),

                        /// TO INPUT
                        _input(
                          context,
                          value: value,
                          margin: margin / 2.0,
                          isFrom: false,
                        ),
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 6.0),
                  child: _fadeInOut(
                    isOut: false,
                    child: _input(
                      context,
                      value: value,
                      margin: margin / 2.0,
                      isFrom: true,
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    ]);
  }

  Widget _fadeInOut({
    required Widget child,
    required bool isOut,
  }) =>
      AnimatedOpacity(
        opacity: isOut
            ? value < 0.75
                ? 0.0
                : value
            : value > 0.65
                ? 0.0
                : 1.0 - value,
        duration: const Duration(milliseconds: 100),
        child: child,
      );

  Widget _input(
    BuildContext context, {
    required double value,
    required double margin,
    required isFrom,
  }) =>
      GestureDetector(
        onTap: () => onTap(isFrom),
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.only(
            top: isFrom ? 0.0 : margin,
            bottom: isFrom ? margin : 0.0,
          ),
          height: 45.0,
          child: Align(
            alignment: isFrom ? Alignment.bottomLeft : Alignment.topLeft,
            child: Text(
              isFrom ? fromPlace ?? 'Откуда - Москва' : 'Куда - Турция',
              style: isFrom
                  ? fromPlace == null
                      ? Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: HexColors.grey6)
                      : Theme.of(context).textTheme.titleMedium
                  : Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: HexColors.grey6),
            ),
          ),
        ),
      );
}
