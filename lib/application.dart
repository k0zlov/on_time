import 'package:flutter/cupertino.dart';
import 'package:on_time/core/navigation/navigation.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routerConfig: AppNavigation.router,
    );
  }
}
