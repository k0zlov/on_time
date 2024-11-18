import 'package:flutter/cupertino.dart';

class LogoButton extends StatelessWidget {
  const LogoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
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
