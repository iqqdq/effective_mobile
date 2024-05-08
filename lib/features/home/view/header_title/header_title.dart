import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderTitle extends StatelessWidget {
  final double value;
  const HeaderTitle({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18.0 * value),

        /// TITLE
        AnimatedOpacity(
          opacity: value < 0.75 ? 0.0 : value,
          duration: const Duration(milliseconds: 100),
          child: Text(
            Titles.findingCheapFlights,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: HexColor('#D9D9D9')),
          ),
        ),
      ],
    );
  }
}
