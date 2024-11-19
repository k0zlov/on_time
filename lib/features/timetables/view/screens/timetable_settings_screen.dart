import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_settings_screen/members_settings_content.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_settings_screen/switch_selector.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_settings_screen/timetable_settings_content.dart';

class TimetableSettingsScreen extends StatefulWidget {
  const TimetableSettingsScreen({
    super.key,
    required this.timetableId,
  });

  final int timetableId;

  @override
  State<TimetableSettingsScreen> createState() =>
      _TimetableSettingsScreenState();
}

class _TimetableSettingsScreenState extends State<TimetableSettingsScreen> {
  bool isTimetableSelected = true;

  void _toggleScreen(bool isTimetable) {
    setState(() {
      isTimetableSelected = isTimetable;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TimetablesState state = context.select(
      (TimetablesCubit cubit) => cubit.state,
    );

    final TimetableEntity? timetable = state.timetables.firstWhereOrNull(
      (e) => e.id == widget.timetableId,
    );

    if (timetable == null) {
      context.goNamed(AppRoutes.dashboard.name);
      return const SizedBox();
    }

    return ColoredBox(
      color: CupertinoColors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  child: Text(
                    timetable.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SwitchSelector(
              isTimetableSelected: isTimetableSelected,
              onSelectTimetable: () => _toggleScreen(true),
              onSelectMembers: () => _toggleScreen(false),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: isTimetableSelected
                  ? TimetableSettingsContent(timetable: timetable)
                  : MembersSettingsContent(timetableId: widget.timetableId),
            ),
          ],
        ),
      ),
    );
  }
}
