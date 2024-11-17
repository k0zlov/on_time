import 'package:flutter/cupertino.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
    required this.fields,
  });

  final List<Widget> fields;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: fields,
      ),
    );
  }
}
