import 'package:flutter/cupertino.dart';

class CreateTimetableButton extends StatelessWidget {
  const CreateTimetableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: const Row(
        children: [
          Icon(
            CupertinoIcons.add,
            color: CupertinoColors.activeBlue,
          ),
          SizedBox(width: 4),
          Text(
            'New',
            style: TextStyle(
              color: CupertinoColors.activeBlue,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
