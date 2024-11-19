import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';
import 'package:on_time/features/timetables/domain/entities/event_entity/event_entity.dart';
import 'package:on_time/features/timetables/domain/entities/event_host_entity/event_host_entity.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_screen/add_host_modal.dart';

class EventDetailsModal extends StatelessWidget {
  const EventDetailsModal({
    super.key,
    required this.eventId,
  });

  final int eventId;

  void _showAddHostModal(
    BuildContext context,
    EventEntity event,
    List<MemberEntity> members,
  ) {
    final TimetablesCubit cubit = context.read();

    showCupertinoModalPopup<void>(
      context: context,
      builder: (_) => BlocProvider.value(
        value: cubit,
        child: AddHostModal(
          members: members
              .where(
                (member) =>
                    !event.hosts.any((host) => host.memberId == member.id),
              )
              .toList(),
          onHostSelected: (memberId) {
            Navigator.pop(context);
            cubit.onAddHost(event.id, memberId);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TimetablesCubit cubit = context.read();
    final currentUser = context.select(
      (AuthCubit cubit) => cubit.state.currentUser,
    );

    final state = context.select(
      (TimetablesCubit cubit) => cubit.state,
    );

    // Find the event
    final event = state.timetables
        .expand((timetable) => timetable.events)
        .firstWhere((e) => e.id == eventId,
            orElse: () => throw Exception('Event not found'));

    // Find the members of the timetable containing this event
    final members = state.timetables
        .firstWhere((timetable) => timetable.id == event.timetableId)
        .members;

    // Determine user permissions
    final userMember = members.firstWhere(
      (member) => member.userId == currentUser.id,
      orElse: () => const MemberEntity(),
    );

    final isAdmin = userMember.role.isAdmin;

    // Format time
    final timeFormat = DateFormat('HH:mm');

    // Map event hosts to their corresponding members
    final eventHosts = event.hosts.map((host) {
      final member = members.firstWhere(
        (member) => member.id == host.memberId,
        orElse: () => const MemberEntity(),
      );
      return {
        'host': host,
        'member': member,
      };
    }).toList();

    // Modal width
    final width = MediaQuery.of(context).size.width * 0.2;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: CupertinoColors.darkBackgroundGray,
          borderRadius: BorderRadius.circular(12),
        ),
        width: width < 320 ? 320 : width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              event.title,
              style: const TextStyle(
                color: CupertinoColors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Time: ${timeFormat.format(event.startTime)} - ${timeFormat.format(event.endTime)}',
                style: const TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Description:',
                style: TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                event.description.isNotEmpty
                    ? event.description
                    : 'No description available',
                style: const TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hosts:',
                  style: TextStyle(
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                if (isAdmin)
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => _showAddHostModal(context, event, members),
                    child: const Icon(
                      CupertinoIcons.add,
                      size: 20,
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
              ],
            ),
            ...eventHosts.map((hostData) {
              final EventHostEntity host = hostData['host'] as EventHostEntity;
              final MemberEntity member = hostData['member'] as MemberEntity;

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${member.name} ${member.lastName}',
                    style: const TextStyle(
                      color: CupertinoColors.systemGrey2,
                      fontSize: 14,
                    ),
                  ),
                  if (isAdmin)
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        cubit.onRemoveHost(host.id);
                      },
                      child: const Icon(
                        CupertinoIcons.minus_circle,
                        size: 20,
                        color: CupertinoColors.destructiveRed,
                      ),
                    ),
                ],
              );
            }),
            if (eventHosts.isEmpty)
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'No hosts assigned',
                  style: TextStyle(
                    color: CupertinoColors.systemGrey,
                    fontSize: 14,
                  ),
                ),
              ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (isAdmin)
                  CupertinoButton(
                    onPressed: () {
                      cubit.onDeleteEvent(event.id);
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Delete Event',
                      style: TextStyle(color: CupertinoColors.destructiveRed),
                    ),
                  ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Close',
                    style: TextStyle(color: CupertinoColors.activeBlue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
