import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';

class PopularDirectionTile extends StatelessWidget {
  final int index;
  final int lastIndex;
  final String title;
  final VoidCallback onTap;

  const PopularDirectionTile({
    super.key,
    required this.index,
    required this.lastIndex,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: index == 0
            ? const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              )
            : index == lastIndex
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                  )
                : BorderRadius.zero,
        child: Container(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 8.0,
              right: 16.0,
            ),
            child: Column(
              children: [
                Row(children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: index >= 0 && index < 3
                        ? Image.asset(
                            'assets/images/ticket_offers/tickets_offer_${index + 1}.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          )
                        : Container(),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// TITLE
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 4.0),

                        /// SUBTITLE
                        Text(
                          Titles.popularDirection,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: HexColors.grey5),
                        ),
                      ])
                ]),
                index == lastIndex
                    ? const SizedBox(height: 8.0)
                    : Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        height: 0.5,
                        color: HexColors.grey5,
                      ),
              ],
            )),
        onTap: () => onTap(),
      ),
    );
  }
}
