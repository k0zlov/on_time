import 'package:flutter/cupertino.dart';
import 'package:on_time/core/navigation/navigation.dart';
import 'package:on_time/core/resources/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      theme: AppTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigation.router,
    );
  }
}
