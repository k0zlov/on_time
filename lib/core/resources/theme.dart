import 'package:flutter/cupertino.dart';
import 'package:on_time/core/resources/palette.dart';

class AppTheme {
  AppTheme._();

  static CupertinoThemeData getTheme() {
    return const CupertinoThemeData(
      primaryColor: CupertinoColors.systemBlue,
      scaffoldBackgroundColor: AppPalette.scaffoldBackground,
      barBackgroundColor: AppPalette.barBackground,
      textTheme: CupertinoTextThemeData(
        primaryColor: AppPalette.text,
      ),
      brightness: Brightness.dark,
    );
  }
}
