import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'leave_timetable_use_case.freezed.dart';
part 'leave_timetable_use_case.g.dart';

class LeaveTimetableUseCase implements UseCase<void, LeaveTimetableParams> {
  const LeaveTimetableUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(LeaveTimetableParams params) {
    return repository.leave(params);
  }
}

@freezed
class LeaveTimetableParams with _$LeaveTimetableParams {
  const factory LeaveTimetableParams({
    required int id,
  }) = _LeaveTimetableParams;

  const LeaveTimetableParams._();

  factory LeaveTimetableParams.fromJson(Map<String, dynamic> json) =>
      _$LeaveTimetableParamsFromJson(json);
}
