import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';

part 'update_member_use_case.freezed.dart';

part 'update_member_use_case.g.dart';

class UpdateMemberUseCase implements UseCase<void, UpdateMemberParams> {
  const UpdateMemberUseCase({
    required this.repository,
  });

  final TimetablesRepository repository;

  @override
  Future<Either<Failure, void>> call(UpdateMemberParams params) {
    return repository.updateMember(params);
  }
}

@freezed
class UpdateMemberParams with _$UpdateMemberParams {
  const factory UpdateMemberParams({
    required int memberId,
    required String role,
    required int timetableId,
  }) = _UpdateMemberParams;

  const UpdateMemberParams._();

  factory UpdateMemberParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateMemberParamsFromJson(json);
}
