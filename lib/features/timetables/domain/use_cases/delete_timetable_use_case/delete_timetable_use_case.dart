import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'delete_timetable_use_case.freezed.dart';
part 'delete_timetable_use_case.g.dart';

class DeleteTimetableUseCase implements UseCase<void, DeleteTimetableParams> {
  const DeleteTimetableUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(DeleteTimetableParams params) {
    return repository.delete(params);
  }
}

@freezed
class DeleteTimetableParams with _$DeleteTimetableParams {
  const factory DeleteTimetableParams({
    required int id,
  }) = _DeleteTimetableParams;

  const DeleteTimetableParams._();

  factory DeleteTimetableParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteTimetableParamsFromJson(json);
}
