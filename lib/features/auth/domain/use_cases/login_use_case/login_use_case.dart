import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/use_case/use_case.dart';
import 'package:on_time/features/auth/domain/entities/user_entity.dart';
import 'package:on_time/features/auth/domain/repositories/auth_repository.dart';

part 'login_use_case.freezed.dart';

part 'login_use_case.g.dart';

class LoginUseCase implements UseCase<UserEntity, LoginParams> {
  const LoginUseCase({
    required this.repository,
  });

  final AuthRepository repository;

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) {
    return repository.login(params);
  }
}

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    @Default('') String email,
    @Default('') String password,
  }) = _LoginParams;

  const LoginParams._();

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
