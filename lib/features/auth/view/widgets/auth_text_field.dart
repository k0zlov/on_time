import 'package:flutter/cupertino.dart';
import 'package:on_time/core/widgets/reactive/reactive_text_field.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.label,
    required this.placeholder,
    this.isPassword = false,
    required this.text,
    required this.onChanged,
  });

  final String label;
  final String placeholder;
  final bool isPassword;
  final String text;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      text: text,
      builder: (controller, focusNode) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CupertinoTextField(
            controller: controller,
            focusNode: focusNode,
            obscureText: isPassword,
            placeholder: placeholder,
            onChanged: onChanged,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey6,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      },
    );
  }
}
