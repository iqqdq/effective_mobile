import 'package:effective_mobile/features/search/view/view.dart';
import 'package:flutter/material.dart';

class PopularDirectionsListView extends StatelessWidget {
  final List<String> titles;
  final Function(int) onTap;

  const PopularDirectionsListView({
    super.key,
    required this.titles,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0 * titles.length,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: titles.length,
        itemBuilder: (context, index) => PopularDirectionTile(
          index: index,
          lastIndex: titles.length - 1,
          title: titles[index],
          onTap: () => onTap(index),
        ),
      ),
    );
  }
}
