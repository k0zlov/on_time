import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'update_event_use_case.freezed.dart';
part 'update_event_use_case.g.dart';

class UpdateEventUseCase implements UseCase<void, UpdateEventParams> {
  const UpdateEventUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(UpdateEventParams params) {
    return repository.updateEvent(params);
  }
}

@freezed
class UpdateEventParams with _$UpdateEventParams {
  const factory UpdateEventParams({
    required int id,
    String? title,
    String? description,
    int? day,
    int? startTime,
    int? endTime,
  }) = _UpdateEventParams;

  const UpdateEventParams._();

  factory UpdateEventParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateEventParamsFromJson(json);
}

