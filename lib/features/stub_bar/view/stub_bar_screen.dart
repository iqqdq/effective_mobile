import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class StubBarScreen extends StatelessWidget {
  final String title;

  const StubBarScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      centerTitle: true,
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Colors.transparent,
    );

    return Scaffold(
      appBar: appBar,
      body: SizedBox.expand(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(bottom: appBar.preferredSize.height),
            child: Transform.scale(
              scale: 1.5,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
