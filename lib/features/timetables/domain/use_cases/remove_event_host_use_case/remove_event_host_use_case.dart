import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'remove_event_host_use_case.freezed.dart';
part 'remove_event_host_use_case.g.dart';

class RemoveEventHostUseCase implements UseCase<void, RemoveEventHostParams> {
  const RemoveEventHostUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(RemoveEventHostParams params) {
    return repository.removeHost(params);
  }
}

@freezed
class RemoveEventHostParams with _$RemoveEventHostParams {
  const factory RemoveEventHostParams({
    required int id,
  }) = _RemoveEventHostParams;

  const RemoveEventHostParams._();

  factory RemoveEventHostParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveEventHostParamsFromJson(json);
}
