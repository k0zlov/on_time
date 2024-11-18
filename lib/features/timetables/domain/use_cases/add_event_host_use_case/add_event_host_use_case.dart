import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'add_event_host_use_case.freezed.dart';

part 'add_event_host_use_case.g.dart';

class AddEventHostUseCase implements UseCase<void, AddEventHostParams> {
  const AddEventHostUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(AddEventHostParams params) {
    return repository.addHost(params);
  }
}

@freezed
class AddEventHostParams with _$AddEventHostParams {
  const factory AddEventHostParams({
    required int eventId,
    required int memberId,
  }) = _AddEventHostParams;

  const AddEventHostParams._();

  factory AddEventHostParams.fromJson(Map<String, dynamic> json) =>
      _$AddEventHostParamsFromJson(json);
}
