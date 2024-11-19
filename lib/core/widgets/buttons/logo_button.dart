import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/routes.dart';

class LogoButton extends StatelessWidget {
  const LogoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context.goNamed(AppRoutes.dashboard.name);
      },
      child: const Text(
        'OnTime',
        style: TextStyle(
          color: CupertinoColors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
