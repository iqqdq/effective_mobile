import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchAppBar extends StatefulWidget {
  final String? fromPlace;
  final String? toPlace;
  final Function(List<String>) onSwitchTap;
  final VoidCallback onLeadingTap;

  const SearchAppBar({
    super.key,
    required this.fromPlace,
    required this.toPlace,
    required this.onSwitchTap,
    required this.onLeadingTap,
  });

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  late List<String> _places;
  bool _switchValue = false;

  @override
  void initState() {
    _places = [
      widget.fromPlace ?? '',
      widget.toPlace ?? '',
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.0,
      margin: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
      padding: const EdgeInsets.only(
        right: 16.0,
        top: 6.0,
        bottom: 6.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(children: [
        /// BACK BUTTON
        IconButton(
          onPressed: () => widget.onLeadingTap(),
          icon: SvgPicture.asset('assets/icons/ic_back_arrow_white.svg'),
        ),

        /// COUNTRIES
        Expanded(
          child: Column(children: [
            Expanded(
              child: Row(children: [
                /// FROM PLACE
                Expanded(
                  child: Text(
                    _places[0],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),

                /// SWITCH BUTTON
                IconButton(
                  onPressed: () => _switchPlaces(),
                  icon: SvgPicture.asset('assets/icons/ic_switch.svg'),
                ),
              ]),
            ),

            /// DIVIDER
            Container(
              height: 0.5,
              color: Theme.of(context).dividerColor,
            ),

            Expanded(
              child: Row(children: [
                /// TO PLACE
                Expanded(
                  child: Text(
                    _places[1],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ]),
    );
  }

  void _switchPlaces() {
    setState(() {
      _places.removeLast();
      _places.insert(
        0,
        _switchValue == false ? widget.toPlace ?? '' : widget.fromPlace ?? '',
      );

      _switchValue = !_switchValue;
    });

    widget.onSwitchTap(_places);
  }
}
