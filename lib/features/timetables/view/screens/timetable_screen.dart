import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
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

    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          children: [
            TimetableOptionsRow(timetable: timetable),
            const SizedBox(height: 16),
            WeekDaysColumn(timetable: timetable),
          ],
        ),
      ),
    );
  }
}
