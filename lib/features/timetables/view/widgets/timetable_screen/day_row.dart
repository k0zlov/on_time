import 'package:flutter/cupertino.dart';
import 'package:on_time/features/timetables/domain/entities/event_entity/event_entity.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';
import 'event_bar.dart';

class DayRow extends StatelessWidget {
  const DayRow({
    super.key,
    required this.dayName,
    required this.members,
    required this.events,
    required this.scheduleStartTime,
    required this.scheduleEndTime,
    this.topRounded = false,
    this.bottomRounded = false,
  });

  final List<MemberEntity> members;
  final String dayName;
  final List<EventEntity> events;
  final DateTime scheduleStartTime;
  final DateTime scheduleEndTime;
  final bool topRounded;
  final bool bottomRounded;

  @override
  Widget build(BuildContext context) {
    final totalScheduleDuration =
        scheduleEndTime.difference(scheduleStartTime).inMinutes;

    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 100,
            child: Text(
              dayName,
              style: const TextStyle(
                color: CupertinoColors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final totalWidth = constraints.maxWidth;

              return Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: CupertinoColors.darkBackgroundGray,
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: CupertinoColors.systemGrey.withOpacity(0.1),
                    ),
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: topRounded ? const Radius.circular(15) : Radius.zero,
                    bottom:
                        bottomRounded ? const Radius.circular(15) : Radius.zero,
                  ),
                ),
                height: 80,
                child: Stack(
                  children: events.map((event) {
                    return EventBar(
                      event: event,
                      scheduleStartTime: scheduleStartTime,
                      totalScheduleDuration: totalScheduleDuration.toDouble(),
                      totalWidth: totalWidth,
                      members: members,
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
