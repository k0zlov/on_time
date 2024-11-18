import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/create_timetable_button.dart';
import 'package:on_time/features/timetables/view/widgets/timetables_grid.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TimetablesState state = context.select(
      (TimetablesCubit cubit) => cubit.state,
    );

    final timetables = state.timetables;

    return Stack(
      children: [
        if (timetables.isEmpty)
          const Center(
            child: Text(
              'No Timetables Available',
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 16,
              ),
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: TimetablesGrid(timetables: timetables),
          ),
        const Positioned(
          top: 16,
          left: 16,
          child: CreateTimetableButton(),
        ),
      ],
    );
  }
}
