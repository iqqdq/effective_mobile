import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class StubScreen extends StatelessWidget {
  final Widget child;

  const StubScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      centerTitle: true,
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/ic_back_arrow_blue.svg'),
        onPressed: () => context.router.pop(),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: appBar.preferredSize.height),
              child: Transform.scale(
                scale: 1.5,
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}
