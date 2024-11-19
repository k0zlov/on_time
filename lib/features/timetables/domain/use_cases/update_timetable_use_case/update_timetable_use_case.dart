import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'update_timetable_use_case.freezed.dart';

part 'update_timetable_use_case.g.dart';

class UpdateTimetableUseCase implements UseCase<void, UpdateTimetableParams> {
  const UpdateTimetableUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(UpdateTimetableParams params) {
    return repository.update(params);
  }
}

@freezed
class UpdateTimetableParams with _$UpdateTimetableParams {
  const factory UpdateTimetableParams({
    @Default(-1) int id,
    String? title,
    String? description,
    int? startTime,
    int? endTime,
  }) = _UpdateTimetableParams;

  const UpdateTimetableParams._();

  factory UpdateTimetableParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateTimetableParamsFromJson(json);
}
