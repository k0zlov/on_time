import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'create_event_use_case.freezed.dart';

part 'create_event_use_case.g.dart';

class CreateEventUseCase implements UseCase<void, CreateEventParams> {
  const CreateEventUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(CreateEventParams params) {
    return repository.createEvent(params);
  }
}

@freezed
class CreateEventParams with _$CreateEventParams {
  const factory CreateEventParams({
    @Default('') String title,
    @Default(0) int timetableId,
    @Default(-1) int day,
    @Default(2) int startTime,
    @Default(1) int endTime,
    @Default([]) List<int> hosts,
    String? description,
  }) = _CreateEventParams;

  const CreateEventParams._();

  factory CreateEventParams.fromJson(Map<String, dynamic> json) =>
      _$CreateEventParamsFromJson(json);
}
