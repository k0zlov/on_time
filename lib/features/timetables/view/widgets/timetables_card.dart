import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';

class TimetableCard extends StatelessWidget {
  final TimetableEntity timetable;

  const TimetableCard({
    required this.timetable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.darkBackgroundGray,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            timetable.title,
            style: const TextStyle(
              color: CupertinoColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            timetable.description ?? '',
            style: const TextStyle(
              color: CupertinoColors.inactiveGray,
              fontSize: 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Row(
            children: [
              TimetableTimeLine(dateTime: timetable.startTime),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: SizedBox(
                  width: 20,
                  child: Divider(thickness: 1),
                ),
              ),
              TimetableTimeLine(dateTime: timetable.endTime),
            ],
          ),
        ],
      ),
    );
  }
}

class TimetableTimeLine extends StatelessWidget {
  const TimetableTimeLine({
    super.key,
    required this.dateTime,
  });

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('HH:mm');
    final String time = timeFormat.format(dateTime);

    return Row(
      children: [
        const Icon(
          CupertinoIcons.clock,
          size: 20,
          color: CupertinoColors.inactiveGray,
        ),
        const SizedBox(width: 4),
        Text(
          time,
          style: const TextStyle(
            color: CupertinoColors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
