import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_screen/timetable_options_row.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_screen/week_days_column.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({
    super.key,
    required this.timetableId,
  });

  final int timetableId;

  @override
  Widget build(BuildContext context) {
    final TimetablesState state = context.select(
      (TimetablesCubit cubit) => cubit.state,
    );

    final TimetableEntity? timetable = state.timetables.firstWhereOrNull(
      (e) => e.id == timetableId,
    );

    if (timetable == null) {
      context.goNamed(AppRoutes.dashboard.name);
      return const SizedBox();
    }

    final String invitationUrl =
        '${Uri.base.scheme}://${Uri.base.host}:${Uri.base.port}/${timetable.invitationCode}';

    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimetableOptionsRow(timetable: timetable),
            const SizedBox(height: 16),
            WeekDaysColumn(timetable: timetable),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  'Invitation Link:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.darkBackgroundGray,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SelectableText(
                    invitationUrl,
                    style: const TextStyle(
                      fontSize: 14,
                      color: CupertinoColors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CupertinoButton(
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: invitationUrl));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: CupertinoColors.darkBackgroundGray,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      CupertinoIcons.doc_on_clipboard,
                      size: 20,
                      color: CupertinoColors.white,
                    ),
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
