import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_screen/create_event_modal.dart';

class TimetableOptionsRow extends StatelessWidget {
  const TimetableOptionsRow({
    super.key,
    required this.timetable,
  });

  final TimetableEntity timetable;

  void _showCreateEventModal(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<TimetablesCubit>(),
        child: CreateEventModal(timetableId: timetable.id),
      ),
    );
  }

  void _leaveTimetable(BuildContext context) {
    context.read<TimetablesCubit>().onLeaveTimetable(timetable.id);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = context.select(
      (AuthCubit cubit) => cubit.state.currentUser,
    );

    final isOwner = timetable.members.any(
      (member) => member.userId == currentUser.id && member.role.isOwner,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.left_chevron,
            size: 24,
            color: CupertinoColors.activeBlue,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                timetable.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                timetable.description ?? 'No description available',
                style: const TextStyle(
                  fontSize: 14,
                  color: CupertinoColors.systemGrey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Row(
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                _showCreateEventModal(context);
              },
              child: const Icon(
                CupertinoIcons.add,
                size: 24,
                color: CupertinoColors.activeBlue,
              ),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: isOwner
                  ? () {
                      context.goNamed(
                        AppRoutes.timetableSettings.name,
                        pathParameters: {
                          'timetableId': timetable.id.toString(),
                        },
                      );
                    }
                  : () => _leaveTimetable(context),
              child: Icon(
                isOwner
                    ? CupertinoIcons.gear
                    : CupertinoIcons.arrow_right_circle,
                size: 24,
                color: isOwner
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.destructiveRed,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
