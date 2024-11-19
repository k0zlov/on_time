import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_screen/day_row.dart';

class WeekDaysColumn extends StatelessWidget {
  const WeekDaysColumn({
    super.key,
    required this.timetable,
  });

  final TimetableEntity timetable;

  @override
  Widget build(BuildContext context) {
    final days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];

    final timeFormat = DateFormat('HH:mm');
    final formattedStartTime = timeFormat.format(timetable.startTime);
    final formattedEndTime = timeFormat.format(timetable.endTime);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formattedStartTime,
                style: const TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                formattedEndTime,
                style: const TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            days.length,
            (index) => DayRow(
              members: timetable.members,
              scheduleStartTime: timetable.startTime,
              scheduleEndTime: timetable.endTime,
              events: timetable.events.where((e) => e.day == index).toList(),
              dayName: days[index],
              topRounded: index == 0,
              bottomRounded: index == 6,
            ),
          ),
        ),
      ],
    );
  }
}
