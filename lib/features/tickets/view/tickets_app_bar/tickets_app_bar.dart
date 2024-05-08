import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TicketsAppBar extends StatelessWidget {
  final String? fromPlace;
  final String? toPlace;
  final DateTime? comebackDate;
  final DateTime? whenDate;
  final VoidCallback onTap;

  const TicketsAppBar({
    super.key,
    required this.onTap,
    required this.fromPlace,
    required this.toPlace,
    required this.comebackDate,
    required this.whenDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
      padding: const EdgeInsets.only(right: 16.0),
      height: 64.0,
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Row(
        children: [
          /// BACK BUTTON
          IconButton(
              onPressed: () => onTap(),
              icon: SvgPicture.asset(
                'assets/icons/ic_back_arrow_blue.svg',
              )),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// DIRECTION'S TITLE
                  Text(
                    '$fromPlace-$toPlace',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4.0),

                  /// DATE'S TITLE
                  Text(
                    comebackDate == null
                        ? '${whenDate?.day} ${whenDate?.toMonth()}, 1 ${Titles.passenger}'
                        : '${whenDate?.day} ${whenDate?.toMonth()} - ${comebackDate?.day} ${comebackDate?.toMonth()}, 1 ${Titles.passenger}',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontStyle: FontStyle.italic,
                          color: HexColors.grey6,
                        ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
