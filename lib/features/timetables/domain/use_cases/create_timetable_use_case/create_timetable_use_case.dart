import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'create_timetable_use_case.freezed.dart';

part 'create_timetable_use_case.g.dart';

class CreateTimetableUseCase
    implements UseCase<TimetableEntity, CreateTimetableParams> {
  const CreateTimetableUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, TimetableEntity>> call(CreateTimetableParams params) {
    return repository.create(params);
  }
}

@freezed
class CreateTimetableParams with _$CreateTimetableParams {
  const factory CreateTimetableParams({
    required String title,
    required int startTime,
    required int endTime,
    String? description,
  }) = _CreateTimetableParams;

  const CreateTimetableParams._();

  factory CreateTimetableParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTimetableParamsFromJson(json);
}
