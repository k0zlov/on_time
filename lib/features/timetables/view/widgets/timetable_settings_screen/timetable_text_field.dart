import 'package:flutter/cupertino.dart';
import 'package:on_time/core/widgets/reactive/reactive_text_field.dart';

class TimetableTextField extends StatelessWidget {
  const TimetableTextField({
    super.key,
    required this.label,
    required this.text,
    required this.placeholder,
    this.onChanged,
  });

  final String label;
  final String text;
  final String placeholder;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: CupertinoColors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 60,
          child: ReactiveTextField(
            text: text,
            builder: (controller, focusNode) {
              return CupertinoTextField(
                controller: controller,
                focusNode: focusNode,
                placeholder: placeholder,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: CupertinoColors.darkBackgroundGray,
                  borderRadius: BorderRadius.circular(8),
                ),
                style: const TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 16,
                ),
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.systemGrey,
                ),
                onChanged: onChanged,
              );
            },
          ),
        ),
      ],
    );
  }
}
