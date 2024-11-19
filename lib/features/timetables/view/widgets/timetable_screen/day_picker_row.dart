import 'package:flutter/cupertino.dart';

class DayPickerRow extends StatelessWidget {
  const DayPickerRow({
    super.key,
    required this.label,
    required this.selectedDay,
    required this.onPressed,
  });

  final String label;
  final String? selectedDay;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: CupertinoColors.white,
            fontSize: 16,
          ),
        ),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          child: Text(
            selectedDay ?? 'Select Day',
            style: const TextStyle(
              color: CupertinoColors.activeBlue,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
