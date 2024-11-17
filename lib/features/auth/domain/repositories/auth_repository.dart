import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/features/auth/domain/entities/user_entity.dart';
import 'package:on_time/features/auth/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/register_use_case/register_use_case.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, void>> logout();

  Future<Either<Failure, UserEntity>> getUser();

  Future<Either<Failure, UserEntity>> login(LoginParams params);

  Future<Either<Failure, UserEntity>> register(RegisterParams params);
}
