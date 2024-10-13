import 'package:flutter/cupertino.dart';
import 'package:on_time/core/screen_factory/screen_factory.dart';
import 'package:on_time/di_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await registerDependencies();

  runApp(ScreenFactory.renderApplication());
}
