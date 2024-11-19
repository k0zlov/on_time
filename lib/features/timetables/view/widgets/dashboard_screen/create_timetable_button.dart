import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/dashboard_screen/create_timetable_modal.dart';

class CreateTimetableButton extends StatelessWidget {
  const CreateTimetableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showCupertinoModalPopup<bool>(
          context: context,
          builder: (_) => BlocProvider.value(
            value: context.read<TimetablesCubit>(),
            child: const CreateTimetableModal(),
          ),
        );
      },
      child: const Row(
        children: [
          Icon(
            CupertinoIcons.add,
            color: CupertinoColors.activeBlue,
          ),
          SizedBox(width: 4),
          Text(
            'New',
            style: TextStyle(
              color: CupertinoColors.activeBlue,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
