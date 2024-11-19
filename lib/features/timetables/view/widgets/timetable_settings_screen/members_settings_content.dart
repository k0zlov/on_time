import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';

class MembersSettingsContent extends StatelessWidget {
  const MembersSettingsContent({super.key, required this.timetable});

  final TimetableEntity timetable;

  @override
  Widget build(BuildContext context) {
    final TimetablesCubit cubit = context.read();

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: timetable.members.isEmpty
                ? const Center(
                    child: Text(
                      'No members found.',
                      style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 16,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: timetable.members.length,
                    itemBuilder: (context, index) {
                      final member = timetable.members[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: CupertinoColors.darkBackgroundGray,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${member.name} ${member.lastName}',
                                    style: const TextStyle(
                                      color: CupertinoColors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    member.role.name,
                                    style: const TextStyle(
                                      color: CupertinoColors.systemGrey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              if (member.role != MemberRole.owner)
                                Row(
                                  children: [
                                    if (member.role == MemberRole.member)
                                      RoleActionButton(
                                        color: CupertinoColors.activeGreen,
                                        label: 'Promote',
                                        onPressed: () {
                                          cubit.onUpdateMember(
                                            member.id,
                                            timetable.id,
                                            MemberRole.admin,
                                          );
                                        },
                                      ),
                                    if (member.role == MemberRole.admin)
                                      RoleActionButton(
                                        color: CupertinoColors.systemRed,
                                        label: 'Demote',
                                        onPressed: () {
                                          cubit.onUpdateMember(
                                            member.id,
                                            timetable.id,
                                            MemberRole.member,
                                          );
                                        },
                                      ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class RoleActionButton extends StatelessWidget {
  const RoleActionButton({
    super.key,
    required this.color,
    required this.label,
    required this.onPressed,
  });

  final Color color;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: color.withOpacity(0.4),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: CupertinoColors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
