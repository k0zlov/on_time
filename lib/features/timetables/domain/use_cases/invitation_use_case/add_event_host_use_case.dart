import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'add_event_host_use_case.freezed.dart';

part 'add_event_host_use_case.g.dart';

class InvitationUseCase implements UseCase<void, InvitationParams> {
  const InvitationUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(InvitationParams params) {
    return repository.invitation(params);
  }
}

@freezed
class InvitationParams with _$InvitationParams {
  const factory InvitationParams({
    @Default('') String code,
  }) = _InvitationParams;

  const InvitationParams._();

  factory InvitationParams.fromJson(Map<String, dynamic> json) =>
      _$InvitationParamsFromJson(json);
}
