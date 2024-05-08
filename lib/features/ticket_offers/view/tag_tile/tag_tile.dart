import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TagTile extends StatelessWidget {
  final String title;
  final String asset;
  final VoidCallback onTap;

  const TagTile({
    super.key,
    required this.title,
    required this.asset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(18.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(18.0),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Row(
              children: [
                /// IMAGE
                asset.isEmpty ? Container() : SvgPicture.asset(asset),
                SizedBox(width: asset.isEmpty ? 0.0 : 8.0),

                /// TITLE
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontStyle: FontStyle.italic,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ],
            ),
          ),
          onTap: () => onTap(),
        ),
      ),
    );
  }
}
