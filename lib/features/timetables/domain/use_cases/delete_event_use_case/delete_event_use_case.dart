import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'delete_event_use_case.freezed.dart';
part 'delete_event_use_case.g.dart';

class DeleteEventUseCase implements UseCase<void, DeleteEventParams> {
  const DeleteEventUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(DeleteEventParams params) {
    return repository.deleteEvent(params);
  }
}

@freezed
class DeleteEventParams with _$DeleteEventParams {
  const factory DeleteEventParams({
    required int id,
  }) = _DeleteEventParams;

  const DeleteEventParams._();

  factory DeleteEventParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteEventParamsFromJson(json);
}
