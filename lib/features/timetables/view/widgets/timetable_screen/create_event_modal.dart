import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/create_text_field.dart';
import 'package:on_time/features/timetables/view/widgets/time_picker_row.dart';
import 'package:on_time/features/timetables/view/widgets/timetable_screen/day_picker_row.dart';

class CreateEventModal extends StatelessWidget {
  const CreateEventModal({
    super.key,
    required this.timetableId,
  });

  final int timetableId;

  Future<void> _showDayPicker(
    BuildContext context,
    TimetablesCubit cubit,
  ) async {
    final days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];

    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: const Text('Select Day'),
        actions: days
            .asMap()
            .entries
            .map(
              (entry) => CupertinoActionSheetAction(
                onPressed: () {
                  cubit.onCreateEventDayChanged(entry.key);
                  Navigator.pop(context);
                },
                child: Text(entry.value),
              ),
            )
            .toList(),
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  }

  Future<void> _showTimePicker(
      BuildContext context, TimetablesCubit cubit, String field) async {
    final state = context.read<TimetablesCubit>().state;

    final initialTime = field == 'start'
        ? Duration(seconds: state.createEventParams.startTime)
        : Duration(seconds: state.createEventParams.endTime);

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
                  cubit.onCreateEventStartTimeChanged(seconds);
                } else {
                  cubit.onCreateEventEndTimeChanged(seconds);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TimetablesCubit>();
    final state = context.select((TimetablesCubit cubit) => cubit.state);

    final selectedDay = state.createEventParams.day > -1
        ? [
            'Monday',
            'Tuesday',
            'Wednesday',
            'Thursday',
            'Friday',
            'Saturday',
            'Sunday',
          ][state.createEventParams.day]
        : null;

    final startTime = Duration(seconds: state.createEventParams.startTime);
    final endTime = Duration(seconds: state.createEventParams.endTime);

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
            const Text(
              'Create New Event',
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            CreateTextField(
              text: state.createEventParams.title,
              placeholder: 'Title',
              onChanged: cubit.onCreateEventTitleChanged,
            ),
            const SizedBox(height: 12),
            CreateTextField(
              text: state.createEventParams.description ?? '',
              placeholder: 'Description (optional)',
              onChanged: cubit.onCreateEventDescriptionChanged,
            ),
            const SizedBox(height: 12),
            DayPickerRow(
              label: 'Day',
              selectedDay: selectedDay,
              onPressed: () => _showDayPicker(context, cubit),
            ),
            const SizedBox(height: 12),
            TimePickerRow(
              label: 'Start Time',
              selectedTime: TimeOfDay(
                hour: startTime.inHours,
                minute: startTime.inMinutes.remainder(60),
              ),
              onPressed: () => _showTimePicker(context, cubit, 'start'),
            ),
            const SizedBox(height: 12),
            TimePickerRow(
              label: 'End Time',
              selectedTime: TimeOfDay(
                hour: endTime.inHours,
                minute: endTime.inMinutes.remainder(60),
              ),
              onPressed: () => _showTimePicker(context, cubit, 'end'),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: CupertinoColors.destructiveRed),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {
                    if (state.createEventParams.title.isNotEmpty &&
                        state.createEventParams.day > -1 &&
                        state.createEventParams.startTime > 0 &&
                        state.createEventParams.endTime > 0) {
                      if (state.createEventParams.endTime <=
                          state.createEventParams.startTime) {
                        showCupertinoDialog<void>(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            title: const Text('Error'),
                            content: const Text(
                              'End time must be later than start time.',
                            ),
                            actions: [
                              CupertinoDialogAction(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                        return;
                      }

                      cubit.onCreateEvent(timetableId);
                      Navigator.pop(context);
                    } else {
                      showCupertinoDialog<void>(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Text('Error'),
                          content: const Text(
                            'Please fill all required fields.',
                          ),
                          actions: [
                            CupertinoDialogAction(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Create',
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
