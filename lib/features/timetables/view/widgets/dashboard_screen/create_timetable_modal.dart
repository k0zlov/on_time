import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/widgets/create_text_field.dart';
import 'package:on_time/features/timetables/view/widgets/time_picker_row.dart';

class CreateTimetableModal extends StatelessWidget {
  const CreateTimetableModal({super.key});

  Future<void> showTimePicker({
    required BuildContext context,
    required Duration initialDuration,
    required ValueChanged<Duration> onTimeChanged,
  }) async {
    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: MouseRegion(
              cursor: SystemMouseCursors.grab,
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: initialDuration,
                onTimerDurationChanged: onTimeChanged,
              ),
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
              'Create New Timetable',
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            CreateTextField(
              text: state.createParams.title,
              placeholder: 'Title',
              onChanged: cubit.onCreateTitleChanged,
            ),
            const SizedBox(height: 12),
            CreateTextField(
              text: state.createParams.description ?? '',
              placeholder: 'Description (optional)',
              onChanged: cubit.onCreateDescriptionChanged,
            ),
            const SizedBox(height: 12),
            TimePickerRow(
              label: 'Start Time',
              selectedTime: TimeOfDay(
                hour: state.createParams.startTime ~/ 3600,
                minute: (state.createParams.startTime % 3600) ~/ 60,
              ),
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialDuration:
                      Duration(seconds: state.createParams.startTime),
                  onTimeChanged: (newDuration) {
                    cubit.onCreateStartTimeChanged(newDuration.inSeconds);
                  },
                );
              },
            ),
            const SizedBox(height: 12),
            TimePickerRow(
              label: 'End Time',
              selectedTime: TimeOfDay(
                hour: state.createParams.endTime ~/ 3600,
                minute: (state.createParams.endTime % 3600) ~/ 60,
              ),
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialDuration:
                      Duration(seconds: state.createParams.endTime),
                  onTimeChanged: (newDuration) {
                    cubit.onCreateEndTimeChanged(newDuration.inSeconds);
                  },
                );
              },
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
                    if (state.createParams.title.isNotEmpty &&
                        state.createParams.startTime > 0 &&
                        state.createParams.endTime > 0) {
                      if (state.createParams.endTime <=
                          state.createParams.startTime) {
                        showCupertinoDialog<bool>(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            title: const Text('Error'),
                            content: const Text(
                              'End time must be later than start time.',
                            ),
                            actions: [
                              CupertinoDialogAction(
                                isDefaultAction: true,
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

                      cubit.onCreateTimetable();
                      Navigator.pop(context);
                    } else {
                      showCupertinoDialog<bool>(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Text('Error'),
                          content: const Text(
                            'Please fill all required fields.',
                          ),
                          actions: [
                            CupertinoDialogAction(
                              isDefaultAction: true,
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
