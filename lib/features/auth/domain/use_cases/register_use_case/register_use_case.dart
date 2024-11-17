import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/auth/domain/entities/user_entity.dart';
import 'package:on_time/features/auth/domain/repositories/auth_repository.dart';

part 'register_use_case.freezed.dart';

part 'register_use_case.g.dart';

class RegisterUseCase implements UseCase<UserEntity, RegisterParams> {
  const RegisterUseCase({
    required this.repository,
  });

  final AuthRepository repository;

  @override
  Future<Either<Failure, UserEntity>> call(RegisterParams params) {
    return repository.register(params);
  }
}

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    @Default('') String name,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String password,
  }) = _RegisterParams;

  const RegisterParams._();

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}
