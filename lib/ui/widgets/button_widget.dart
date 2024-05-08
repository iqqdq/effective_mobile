import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Color? colorTitle;
  final VoidCallback onTap;

  const ButtonWidget({
    Key? key,
    required this.title,
    required this.color,
    this.colorTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () => onTap(),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: colorTitle == null
                  ? Theme.of(context).textTheme.titleMedium
                  : Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: colorTitle),
            ),
          ),
        ),
      ),
    );
  }
}
