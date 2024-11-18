part of 'timetables_cubit.dart';

class TimetablesState {
  const TimetablesState({
    this.timetables = const [],
  });

  final List<TimetableEntity> timetables;

  TimetablesState copyWith({
    List<TimetableEntity>? timetables,
  }) {
    return TimetablesState(
      timetables: timetables ?? this.timetables,
    );
  }
}
