import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryTile extends StatefulWidget {
  final String title;
  final String asset;
  final HexColor color;
  final Function(Widget) onTap;

  const CategoryTile({
    super.key,
    required this.title,
    required this.asset,
    required this.color,
    required this.onTap,
  });

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  double _scaleValue = 1.0;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      value: 1.0,
      lowerBound: 0.9,
      upperBound: 1.0,
      duration: const Duration(milliseconds: 150),
    );

    _animationController.addListener(
        () => setState(() => _scaleValue = _animationController.value));

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final child = Column(children: [
      /// IMAGE
      Container(
        width: 48.0,
        height: 48.0,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(child: SvgPicture.asset(widget.asset)),
      ),

      /// TITLE
      Text(
        widget.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    ]);

    return GestureDetector(
      onTap: () => widget.onTap(child),
      onLongPressStart: (details) => _animationController.reverse(),
      onLongPressEnd: (details) => _animationController.forward(from: 0.0),
      child: Transform.scale(
        scale: _scaleValue,
        child: SizedBox(
          width: 86.0,
          child: child,
        ),
      ),
    );
  }
}
