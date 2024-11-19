import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_settings_screen/timetable_text_field.dart';
import 'package:on_time/util/date_time_extension.dart';

class TimetableSettingsContent extends StatefulWidget {
  const TimetableSettingsContent({
    super.key,
    required this.timetable,
  });

  final TimetableEntity timetable;

  @override
  State<TimetableSettingsContent> createState() =>
      _TimetableSettingsContentState();
}

class _TimetableSettingsContentState extends State<TimetableSettingsContent> {
  late final TimetablesCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<TimetablesCubit>();

    cubit
      ..onUpdateTimetableTitleChanged(widget.timetable.title)
      ..onUpdateTimetableDescriptionChanged(widget.timetable.description ?? '')
      ..onUpdateTimetableStartTimeChanged(
        widget.timetable.startTime.toSecondsSinceMidnight(),
      )
      ..onUpdateTimetableEndTimeChanged(
        widget.timetable.endTime.toSecondsSinceMidnight(),
      );
  }

  Future<void> _showTimePicker(
    BuildContext context,
    String field,
  ) async {
    final state = cubit.state;

    final initialTime = field == 'start'
        ? Duration(seconds: state.updateTimetableParams.startTime ?? 0)
        : Duration(seconds: state.updateTimetableParams.endTime ?? 0);

    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: CupertinoTimerPicker(
              mode: CupertinoTimerPickerMode.hm,
              initialTimerDuration: initialTime,
              onTimerDurationChanged: (newDuration) {
                final seconds = newDuration.inSeconds;
                if (field == 'start') {
                  cubit.onUpdateTimetableStartTimeChanged(seconds);
                } else {
                  cubit.onUpdateTimetableEndTimeChanged(seconds);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  bool _hasUpdates(TimetablesState state) {
    final parameters = state.updateTimetableParams;

    return (parameters.title ?? '') != widget.timetable.title ||
        (parameters.description ?? '') !=
            (widget.timetable.description ?? '') ||
        (parameters.startTime ?? 0) !=
            widget.timetable.startTime.toSecondsSinceMidnight() ||
        (parameters.endTime ?? 0) !=
            widget.timetable.endTime.toSecondsSinceMidnight();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select((TimetablesCubit cubit) => cubit.state);

    final timeFormat = DateFormat('HH:mm');
    final startTime =
        Duration(seconds: state.updateTimetableParams.startTime ?? 0);
    final endTime = Duration(seconds: state.updateTimetableParams.endTime ?? 0);

    final bool hasUpdates = _hasUpdates(state);

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimetableTextField(
            label: 'Title',
            text: state.updateTimetableParams.title ?? '',
            placeholder: 'Enter title',
            onChanged: cubit.onUpdateTimetableTitleChanged,
          ),
          const SizedBox(height: 12),
          TimetableTextField(
            label: 'Description',
            text: state.updateTimetableParams.description ?? '',
            placeholder: 'Enter description',
            onChanged: cubit.onUpdateTimetableDescriptionChanged,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Start Time:',
                style: TextStyle(
                  fontSize: 16,
                  color: CupertinoColors.white,
                ),
              ),
              CupertinoButton(
                onPressed: () => _showTimePicker(context, 'start'),
                child: Text(
                  timeFormat.format(DateTime(0).add(startTime)),
                  style: const TextStyle(
                    color: CupertinoColors.activeBlue,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'End Time:',
                style: TextStyle(
                  fontSize: 16,
                  color: CupertinoColors.white,
                ),
              ),
              CupertinoButton(
                onPressed: () => _showTimePicker(context, 'end'),
                child: Text(
                  timeFormat.format(DateTime(0).add(endTime)),
                  style: const TextStyle(
                    color: CupertinoColors.activeBlue,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: CupertinoButton(
              onPressed: hasUpdates
                  ? () {
                      cubit.onUpdateTimetable(widget.timetable.id);
                    }
                  : null,
              color: hasUpdates
                  ? CupertinoColors.activeGreen
                  : CupertinoColors.systemGrey4,
              child: Text(
                'Update',
                style: TextStyle(
                  color: hasUpdates
                      ? CupertinoColors.white
                      : CupertinoColors.systemGrey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
