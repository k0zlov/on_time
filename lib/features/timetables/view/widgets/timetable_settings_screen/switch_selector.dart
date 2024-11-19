import 'package:flutter/cupertino.dart';

class SwitchSelector extends StatelessWidget {
  const SwitchSelector({
    super.key,
    required this.isTimetableSelected,
    required this.onSelectTimetable,
    required this.onSelectMembers,
  });

  final bool isTimetableSelected;
  final VoidCallback onSelectTimetable;
  final VoidCallback onSelectMembers;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: 40,
      decoration: BoxDecoration(
        color: CupertinoColors.darkBackgroundGray,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            alignment: isTimetableSelected
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 40,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: onSelectTimetable,
                  child: Text(
                    'Timetable',
                    style: TextStyle(
                      color: isTimetableSelected
                          ? CupertinoColors.white
                          : CupertinoColors.inactiveGray,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: onSelectMembers,
                  child: Text(
                    'Members',
                    style: TextStyle(
                      color: !isTimetableSelected
                          ? CupertinoColors.white
                          : CupertinoColors.inactiveGray,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
