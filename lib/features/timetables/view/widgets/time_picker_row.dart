import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerRow extends StatelessWidget {
  const TimePickerRow({
    super.key,
    required this.label,
    required this.selectedTime,
    required this.onPressed,
  });

  final String label;
  final TimeOfDay? selectedTime;
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
            selectedTime == null
                ? 'Select Time'
                : '${selectedTime!.hour.toString().padLeft(2, '0')}:${selectedTime!.minute.toString().padLeft(2, '0')}',
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
