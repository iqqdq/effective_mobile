import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TicketsFilterButton extends StatelessWidget {
  final VoidCallback onTap;

  const TicketsFilterButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(18.5),
      child: InkWell(
        onTap: () => onTap(),
        borderRadius: BorderRadius.circular(18.5),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 11.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.5),
          ),
          child: Row(children: [
            SvgPicture.asset('assets/icons/ic_filter.svg'),
            const SizedBox(width: 4.0),
            Text(
              Titles.filter,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(width: 16.0),
            SvgPicture.asset('assets/icons/ic_chart.svg'),
            const SizedBox(width: 4.0),
            Text(
              Titles.priceChart,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontStyle: FontStyle.italic),
            ),
            const SizedBox(width: 4.0),
          ]),
        ),
      ),
    );
  }
}
