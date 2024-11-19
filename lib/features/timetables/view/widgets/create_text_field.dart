import 'package:flutter/cupertino.dart';
import 'package:on_time/core/widgets/reactive/reactive_text_field.dart';

class CreateTextField extends StatelessWidget {
  const CreateTextField({
    super.key,
    required this.text,
    required this.placeholder,
    this.keyboardType,
    this.onChanged,
  });

  final String text;
  final String placeholder;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      text: text,
      builder: (controller, focusNode) {
        return CupertinoTextField(
          controller: controller,
          focusNode: focusNode,
          placeholder: placeholder,
          keyboardType: keyboardType,
          padding: const EdgeInsets.all(12),
          onChanged: onChanged,
        );
      },
    );
  }
}
