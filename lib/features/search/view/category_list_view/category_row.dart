import 'package:effective_mobile/components/components.dart';
import 'package:effective_mobile/features/search/view/view.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  final Function(
    Widget?,
    String,
  ) onTap;

  const CategoryRow({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 24.0,
        bottom: 30.0,
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryTile(
              title: Titles.difficultRoute,
              asset: 'assets/icons/ic_route.svg',
              color: HexColors.green,
              onTap: (child) => onTap(
                child,
                Titles.difficultRoute,
              ),
            ),
            CategoryTile(
              title: Titles.anywhere,
              asset: 'assets/icons/ic_world.svg',
              color: HexColors.blue,
              onTap: (child) => onTap(
                null,
                Titles.anywhere,
              ),
            ),
            CategoryTile(
              title: Titles.weekend,
              asset: 'assets/icons/ic_calendar.svg',
              color: HexColors.darkBlue,
              onTap: (child) => onTap(
                child,
                Titles.weekend,
              ),
            ),
            CategoryTile(
              title: Titles.hotTickets,
              asset: 'assets/icons/ic_flame.svg',
              color: HexColors.red,
              onTap: (child) => onTap(
                child,
                Titles.hotTickets,
              ),
            ),
          ]),
    );
  }
}
