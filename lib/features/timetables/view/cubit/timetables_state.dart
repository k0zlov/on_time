part of 'timetables_cubit.dart';

class TimetablesState {
  const TimetablesState({
    this.createParams = const CreateTimetableParams(),
    this.createEventParams = const CreateEventParams(),
    this.updateTimetableParams = const UpdateTimetableParams(),
    this.timetables = const [],
  });

  final UpdateTimetableParams updateTimetableParams;

  final CreateEventParams createEventParams;

  final CreateTimetableParams createParams;

  final List<TimetableEntity> timetables;

  TimetablesState copyWith({
    UpdateTimetableParams? updateTimetableParams,
    CreateEventParams? createEventParams,
    CreateTimetableParams? createParams,
    List<TimetableEntity>? timetables,
  }) {
    return TimetablesState(
      updateTimetableParams:
          updateTimetableParams ?? this.updateTimetableParams,
      createEventParams: createEventParams ?? this.createEventParams,
      createParams: createParams ?? this.createParams,
      timetables: timetables ?? this.timetables,
    );
  }
}
