import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:on_time/features/timetables/domain/entities/event_entity/event_entity.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_screen/event_details_modal.dart';
import 'package:on_time/util/color_randomizer.dart';

class EventBar extends StatelessWidget {
  const EventBar({
    super.key,
    required this.event,
    required this.scheduleStartTime,
    required this.totalScheduleDuration,
    required this.totalWidth,
    required this.members,
  });

  final EventEntity event;
  final DateTime scheduleStartTime;
  final double totalScheduleDuration;
  final double totalWidth;
  final List<MemberEntity> members;

  void _showEventDetailsModal(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<TimetablesCubit>(),
        child: EventDetailsModal(eventId: event.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('HH:mm');

    final eventStartOffset =
        event.startTime.difference(scheduleStartTime).inMinutes;
    final eventDuration = event.endTime.difference(event.startTime).inMinutes;

    final leftOffset = (eventStartOffset / totalScheduleDuration) * totalWidth;
    final width = (eventDuration / totalScheduleDuration) * totalWidth;

    return Positioned(
      left: leftOffset,
      width: width,
      top: 5,
      bottom: 5,
      child: CupertinoButton(
        onPressed: () => _showEventDetailsModal(context),
        minSize: 0,
        padding: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: ColorRandomizer.getRandomColor().withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: Text(
                  timeFormat.format(event.startTime),
                  style: const TextStyle(
                    color: CupertinoColors.systemGrey,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    event.title,
                    style: const TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  timeFormat.format(event.endTime),
                  style: const TextStyle(
                    color: CupertinoColors.inactiveGray,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
