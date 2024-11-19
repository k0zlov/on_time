import 'package:flutter/cupertino.dart';

class MembersSettingsContent extends StatelessWidget {
  const MembersSettingsContent({super.key, required this.timetableId});

  final int timetableId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Members Settings for ID: $timetableId',
        style: const TextStyle(
          color: CupertinoColors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
